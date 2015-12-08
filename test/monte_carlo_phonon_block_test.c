#include "monte_carlo.h"
#include "util.h"
#include <mkl.h>
#include <math.h>
#include <assert.h>
#include <stdio.h>


int MonteCarloPhononBlockTest()
{
	sim_params_t params = { 0 };
	AllocateSimulationParameters(1, &params);

	// lattice field dimensions
	params.Nx = 4;
	params.Ny = 6;

	// total number of lattice sites
	const int N = params.Norb * params.Nx*params.Ny;

	// coupling constant in the Hubbard hamiltonian
	params.U[0] = 4.0;

	// imaginary-time step size
	params.dt = 1.0/8;

	// hopping parameters
	params.t.aa[0] = 0.0;
	params.t.ab[0] = 1.0;
	params.t.ac[0] = 1.0;
	params.t.ad[0] = 0.0;
	params.t.bc[0] = 0.0;

	// chemical potential
	params.mu = 0.0;
	params.eps[0] = 0;

	// number of time steps
	params.L = 16;

	// largest number of B_l matrices multiplied together before performing a QR decomposition
	params.prodBlen = 4;

	// Hubbard-Stratonovich parameters
	stratonovich_params_t stratonovich_params;
	FillStratonovichParameters(params.Norb, params.U, params.dt, &stratonovich_params);

	// phonon parameters
	params.phonon_params.omega[0] = 1.2;
	params.phonon_params.g[0] = 0.65;
	params.phonon_params.box_width = 2;
	params.phonon_params.nblock_updates = 2;

	// calculate matrix exponential of the kinetic nearest neighbor hopping matrix
	kinetic_t kinetic;
	RectangularKineticExponential(&params, &kinetic);

	// Hubbard-Stratonovich field remains constant during phonon block updates
	spin_field_t *s = (spin_field_t *)MKL_malloc(params.L*N * sizeof(spin_field_t), MEM_DATA_ALIGN);
	int status;
	status = ReadData("../test/monte_carlo_phonon_block_test_s.dat", s, sizeof(spin_field_t), params.L*N); if (status != 0) { return status; }

	// initial phonon field
	double *X    = (double *)MKL_malloc(params.L*N * sizeof(double), MEM_DATA_ALIGN);
	double *expX = (double *)MKL_malloc(params.L*N * sizeof(double), MEM_DATA_ALIGN);
	status = ReadData("../test/monte_carlo_phonon_block_test_X0.dat", X, sizeof(double), params.L*N); if (status != 0) { return status; }
	int i;
	for (i = 0; i < params.L*N; i++)
	{
		expX[i] = exp(-params.dt*params.phonon_params.g[0] * X[i]);
	}

	// time step matrices
	time_step_matrices_t tsm_u;
	time_step_matrices_t tsm_d;
	AllocateTimeStepMatrices(N, params.L, params.prodBlen, &tsm_u);
	AllocateTimeStepMatrices(N, params.L, params.prodBlen, &tsm_d);
	InitPhononTimeStepMatrices(&kinetic, stratonovich_params.expVu, s, expX, &tsm_u);
	InitPhononTimeStepMatrices(&kinetic, stratonovich_params.expVd, s, expX, &tsm_d);

	// allocate and construct initial Green's functions
	greens_func_t Gu, Gd;
	AllocateGreensFunction(N, &Gu);
	AllocateGreensFunction(N, &Gd);
	GreenConstruct(&tsm_u, 0, &Gu);
	GreenConstruct(&tsm_d, 0, &Gd);

	// artificial UNIX time
	params.itime = 1420000246;

	// random generator seed; multiplicative constant from Pierre L'Ecuyer's paper
	randseed_t seed;
	Random_SeedInit(1865811235122147685LL * params.itime, &seed);

	// perform phonon block updates (first update will be accepted and second rejected)
	printf("Performing phonon block updates on a %i x %i lattice at beta = %g...\n", params.Nx, params.Ny, params.L*params.dt);
	PhononBlockUpdates(params.dt, &kinetic, &stratonovich_params, &params.phonon_params, &seed, s, X, expX, &tsm_u, &tsm_d, &Gu, &Gd);

	// load reference phonon field from disk
	double    X_ref[params.L*N];
	double expX_ref[params.L*N];
	status = ReadData("../test/monte_carlo_phonon_block_test_X1.dat",       X_ref, sizeof(double), params.L*N); if (status != 0) { return status; }
	status = ReadData("../test/monte_carlo_phonon_block_test_expX1.dat", expX_ref, sizeof(double), params.L*N); if (status != 0) { return status; }

	// entrywise absolute error of the phonon field
	double errX = fmax(
		UniformDistance(params.L*N,    X,    X_ref),
		UniformDistance(params.L*N, expX, expX_ref));
	printf("Largest entrywise absolute error of the phonon field: %g\n", errX);

	// load reference Green's function matrices from disk
	double Gu_mat_ref[N*N];
	double Gd_mat_ref[N*N];
	double detGu_ref, detGd_ref;
	status = ReadData("../test/monte_carlo_phonon_block_test_Gu1.dat",    Gu_mat_ref, sizeof(double), N*N); if (status != 0) { return status; }
	status = ReadData("../test/monte_carlo_phonon_block_test_Gd1.dat",    Gd_mat_ref, sizeof(double), N*N); if (status != 0) { return status; }
	status = ReadData("../test/monte_carlo_phonon_block_test_detGu1.dat", &detGu_ref, sizeof(double), 1);   if (status != 0) { return status; }
	status = ReadData("../test/monte_carlo_phonon_block_test_detGd1.dat", &detGd_ref, sizeof(double), 1);   if (status != 0) { return status; }

	// entrywise relative error of the Green's function matrices
	double errG_rel = 0;
	for (i = 0; i < N*N; i++)
	{
		errG_rel = fmax(errG_rel, fabs((Gu.mat[i] - Gu_mat_ref[i])/Gu_mat_ref[i]));
		errG_rel = fmax(errG_rel, fabs((Gd.mat[i] - Gd_mat_ref[i])/Gd_mat_ref[i]));
	}
	printf("Largest entrywise relative error of the Green's function matrices: %g\n", errG_rel);

	// entrywise absolute error of the Green's function matrices
	double errG_abs = fmax(
		UniformDistance(N*N, Gu.mat, Gu_mat_ref),
		UniformDistance(N*N, Gd.mat, Gd_mat_ref));
	printf("Largest entrywise absolute error of the Green's function matrices: %g\n", errG_abs);

	// relative error of determinant
	double detGu = Gu.sgndet * exp(Gu.logdet);
	double detGd = Gd.sgndet * exp(Gd.logdet);
	double err_detG = fmax(
		fabs((detGu - detGu_ref) / detGu_ref),
		fabs((detGd - detGd_ref) / detGd_ref));
	printf("Relative determinant error: %g\n", err_detG);

	// clean up
	DeleteGreensFunction(&Gd);
	DeleteGreensFunction(&Gu);
	DeleteTimeStepMatrices(&tsm_d);
	DeleteTimeStepMatrices(&tsm_u);
	MKL_free(expX);
	MKL_free(X);
	MKL_free(s);
	DeleteKineticExponential(&kinetic);

	return (errX < 5e-16 && errG_rel < 5e-11 && errG_abs < 2e-14 && err_detG < 8e-14 ? 0 : 1);
}
