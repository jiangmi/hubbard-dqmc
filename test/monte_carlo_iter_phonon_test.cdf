(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 10.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[     72587,       2102]
NotebookOptionsPosition[     68755,       1950]
NotebookOutlinePosition[     69098,       1965]
CellTagsIndexPosition[     69055,       1962]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["General parameters", "Subsection"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"Coulomb", " ", "coupling", " ", "constant"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["U", "val"], "=", 
     RowBox[{"9", "/", "2"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"N", "[", "%", "]"}]}]}]], "Input"],

Cell[BoxData["4.5`"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"inverse", " ", "temperature"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[Beta]", "val"], "=", "2"}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"imaginary", "-", 
    RowBox[{"time", " ", "step"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[Tau]", "val"], "=", 
    FractionBox["1", "8"]}], ";"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   SubscriptBox["\[Lambda]", "val"], "=", 
   RowBox[{"ArcCosh", "[", 
    RowBox[{"Exp", "[", 
     RowBox[{
      SubscriptBox["\[Tau]", "val"], 
      RowBox[{
       SubscriptBox["U", "val"], "/", "2"}]}], "]"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"N", "[", "%", "]"}]}], "Input"],

Cell[BoxData["0.7856003600934582`"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"number", " ", "of", " ", "time", " ", "steps"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["L", "val"], "=", 
   FractionBox[
    SubscriptBox["\[Beta]", "val"], 
    SubscriptBox["\[Tau]", "val"]]}]}]], "Input"],

Cell[BoxData["16"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"phonon", " ", "frequency"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[CapitalOmega]", "val"], "=", 
    RowBox[{"13", "/", "10"}]}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"electron", "-", 
    RowBox[{"phonon", " ", "interaction", " ", "strength"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["g", "val"], "=", 
    RowBox[{"7", "/", "10"}]}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "box", " ", "width", " ", "for", " ", "updates", " ", "of", " ", "the", 
    " ", "phonon", " ", "field", " ", "variables"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["box", "width"], "=", "12"}], ";"}]}]], "Input"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Rectangular lattice", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"lattice", " ", "dimensions"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["n", "x"], "=", "4"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     SubscriptBox["n", "y"], "=", "6"}], ";"}]}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"lattice", " ", "sites"}], ",", " ", 
    RowBox[{
     RowBox[{"in", " ", "column"}], "-", 
     RowBox[{"major", " ", 
      RowBox[{"(", "Fortran", ")"}], " ", "order"}]}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["latt", "sites"], "=", 
    RowBox[{"Flatten", "[", 
     RowBox[{
      RowBox[{"Transpose", "[", 
       RowBox[{"Outer", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"{", "##", "}"}], "&"}], ",", 
         RowBox[{"Range", "[", 
          RowBox[{"0", ",", 
           RowBox[{
            SubscriptBox["n", "x"], "-", "1"}]}], "]"}], ",", 
         RowBox[{"Range", "[", 
          RowBox[{"0", ",", 
           RowBox[{
            SubscriptBox["n", "y"], "-", "1"}]}], "]"}]}], "]"}], "]"}], ",", 
      "1"}], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"Dimensions", "[", "%", "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "0"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "2"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "3"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "4"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2", ",", "5"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3", ",", "5"}], "}"}]}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "2"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"total", " ", "number", " ", "of", " ", "lattice", " ", "sites"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["n", "sites"], "=", 
   RowBox[{"Length", "[", 
    SubscriptBox["latt", "sites"], "]"}]}]}]], "Input"],

Cell[BoxData["24"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"direct", " ", "neighbors"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["latt", "neigh"], "=", 
    RowBox[{"Outer", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"If", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Norm", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{"First", "[", 
                RowBox[{"#1", "-", "#2"}], "]"}], ",", 
               SubscriptBox["n", "x"], ",", 
               RowBox[{"-", "1"}]}], "]"}], ",", 
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{"Last", "[", 
                RowBox[{"#1", "-", "#2"}], "]"}], ",", 
               SubscriptBox["n", "y"], ",", 
               RowBox[{"-", "1"}]}], "]"}]}], "}"}], "]"}], "\[Equal]", "1"}],
          ",", "1", ",", "0"}], "]"}], "&"}], ",", 
      SubscriptBox["latt", "sites"], ",", 
      SubscriptBox["latt", "sites"], ",", "1"}], "]"}]}], ";"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"check", ":", " ", "symmetric"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["latt", "neigh"], ";"}], "\[IndentingNewLine]", 
   RowBox[{"Norm", "[", 
    RowBox[{"%", "-", 
     RowBox[{"Transpose", "[", "%", "]"}]}], "]"}]}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"check", ":", " ", 
    RowBox[{"every", " ", "site", " ", "has", " ", "4", " ", "neighbors"}]}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Norm", "[", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"Total", "/@", 
      SubscriptBox["latt", "neigh"]}], ")"}], "-", "4"}], "]"}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Kinetic energy operator", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"symbolic", " ", 
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{
      RowBox[{"-", "\[Tau]"}], " ", "k"}]], " ", "and", " ", 
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{"\[Tau]", " ", "k"}]]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["exp", "\[Tau]k"], "=", 
     RowBox[{"FullSimplify", "[", 
      RowBox[{"MatrixExp", "[", 
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["\[Tau]", "val"]}], " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SubscriptBox["latt", "neigh"]}], ")"}]}], "]"}], "]"}]}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     SubscriptBox["invexp", "\[Tau]k"], "=", 
     RowBox[{"FullSimplify", "[", 
      RowBox[{"MatrixExp", "[", 
       RowBox[{
        SubscriptBox["\[Tau]", "val"], " ", 
        RowBox[{"(", 
         RowBox[{"-", 
          SubscriptBox["latt", "neigh"]}], ")"}]}], "]"}], "]"}]}], 
    ";"}]}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["exp", "\[Tau]k"], "\[LeftDoubleBracket]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "//", 
   "MatrixForm"}]}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {
      RowBox[{
       FractionBox["1", "12"], " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         RowBox[{"6", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["1", "8"], "]"}]}], "+", 
         RowBox[{"2", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["1", "4"], "]"}]}], "+", 
         RowBox[{"2", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["3", "8"], "]"}]}], "+", 
         RowBox[{"Cosh", "[", 
          FractionBox["1", "2"], "]"}]}], ")"}]}], 
      RowBox[{
       FractionBox["1", "12"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Sinh", "[", 
             FractionBox["1", "8"], "]"}], "+", 
            RowBox[{"Sinh", "[", 
             FractionBox["3", "8"], "]"}]}], ")"}]}], "+", 
         RowBox[{"Sinh", "[", 
          FractionBox["1", "2"], "]"}]}], ")"}]}], 
      RowBox[{
       FractionBox["1", "12"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "-", 
         RowBox[{"Cosh", "[", 
          FractionBox["1", "8"], "]"}], "+", 
         RowBox[{"Cosh", "[", 
          FractionBox["3", "8"], "]"}], "+", 
         RowBox[{"Cosh", "[", 
          FractionBox["1", "2"], "]"}]}], ")"}]}]},
     {
      RowBox[{
       FractionBox["1", "12"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"2", " ", 
          RowBox[{"(", 
           RowBox[{
            RowBox[{"Sinh", "[", 
             FractionBox["1", "8"], "]"}], "+", 
            RowBox[{"Sinh", "[", 
             FractionBox["3", "8"], "]"}]}], ")"}]}], "+", 
         RowBox[{"Sinh", "[", 
          FractionBox["1", "2"], "]"}]}], ")"}]}], 
      RowBox[{
       FractionBox["1", "12"], " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         RowBox[{"6", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["1", "8"], "]"}]}], "+", 
         RowBox[{"2", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["1", "4"], "]"}]}], "+", 
         RowBox[{"2", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["3", "8"], "]"}]}], "+", 
         RowBox[{"Cosh", "[", 
          FractionBox["1", "2"], "]"}]}], ")"}]}], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "3"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SqrtBox["\[ExponentialE]"]}]]},
     {
      RowBox[{
       FractionBox["1", "12"], " ", 
       RowBox[{"(", 
        RowBox[{
         RowBox[{"-", "1"}], "-", 
         RowBox[{"Cosh", "[", 
          FractionBox["1", "8"], "]"}], "+", 
         RowBox[{"Cosh", "[", 
          FractionBox["3", "8"], "]"}], "+", 
         RowBox[{"Cosh", "[", 
          FractionBox["1", "2"], "]"}]}], ")"}]}], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "3"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SqrtBox["\[ExponentialE]"]}]], 
      RowBox[{
       FractionBox["1", "12"], " ", 
       RowBox[{"(", 
        RowBox[{"1", "+", 
         RowBox[{"6", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["1", "8"], "]"}]}], "+", 
         RowBox[{"2", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["1", "4"], "]"}]}], "+", 
         RowBox[{"2", " ", 
          RowBox[{"Cosh", "[", 
           FractionBox["3", "8"], "]"}]}], "+", 
         RowBox[{"Cosh", "[", 
          FractionBox["1", "2"], "]"}]}], ")"}]}]}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"numerical", " ", "values"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"N", "[", 
    RowBox[{
     SubscriptBox["exp", "\[Tau]k"], "\[LeftDoubleBracket]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "]"}], "//",
    "MatrixForm"}]}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1.0316390771107469`", "0.1282874159836006`", "0.01591196950710468`"},
     {"0.1282874159836006`", "1.0316390771107469`", "0.0019787011723065764`"},
     {"0.01591196950710468`", "0.0019787011723065764`", "1.0316390771107469`"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "check", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Norm", "[", 
   RowBox[{
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      SubscriptBox["exp", "\[Tau]k"], ".", 
      SubscriptBox["invexp", "\[Tau]k"]}], "]"}], "-", 
    RowBox[{"IdentityMatrix", "[", 
     SubscriptBox["n", "sites"], "]"}]}], "]"}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"compare", " ", "with", " ", "numerical", " ", "evaluation"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Norm", "[", 
    RowBox[{
     SubscriptBox["exp", "\[Tau]k"], "-", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{"N", "[", 
       RowBox[{
        RowBox[{"-", 
         SubscriptBox["\[Tau]", "val"]}], 
        RowBox[{"(", 
         RowBox[{"-", 
          SubscriptBox["latt", "neigh"]}], ")"}]}], "]"}], "]"}]}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Norm", "[", 
    RowBox[{
     SubscriptBox["invexp", "\[Tau]k"], "-", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{"N", "[", 
       RowBox[{
        SubscriptBox["\[Tau]", "val"], 
        RowBox[{"(", 
         RowBox[{"-", 
          SubscriptBox["latt", "neigh"]}], ")"}]}], "]"}], "]"}]}], 
    "]"}]}]}]], "Input"],

Cell[BoxData["9.59646170837076`*^-16"], "Output"],

Cell[BoxData["9.599818764028589`*^-16"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Hubbard-Stratonovich field", "Subsection"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"SeedRandom", "[", "42", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["s", "0"], "=", 
   RowBox[{
    RowBox[{"2", 
     RowBox[{"RandomInteger", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"0", ",", "1"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         SubscriptBox["n", "sites"], ",", 
         SubscriptBox["L", "val"]}], "}"}]}], "]"}]}], "-", "1"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", 
  SubscriptBox["s", "0"], "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "16"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["s", "0"], "\[LeftDoubleBracket]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", 
      RowBox[{"-", "1"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", 
      RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "1", ",", 
     RowBox[{"-", "1"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1"}], ",", 
     RowBox[{"-", "1"}], ",", 
     RowBox[{"-", "1"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "1", ",", 
     RowBox[{"-", "1"}]}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Flatten", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"Transpose", "[", 
     SubscriptBox["s", "0"], "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{"1", "\[Rule]", "0"}], "}"}]}], "/.", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1"}], "\[Rule]", "1"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", 
   "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", 
   ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", 
   "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", 
   "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", 
   ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", 
   ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", 
   "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", 
   ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", 
   ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", 
   ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", 
   "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", 
   ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", 
   ",", "1"}], "}"}]], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Phonon field", "Subsection"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"SeedRandom", "[", "42", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   SubscriptBox["X", "0"], "=", 
   RowBox[{"RandomReal", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "4"}], ",", "4"}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       SubscriptBox["n", "sites"], ",", 
       SubscriptBox["L", "val"]}], "}"}], ",", 
     RowBox[{"WorkingPrecision", "\[Rule]", 
      RowBox[{"4", "MachinePrecision"}]}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", "%", "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "16"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"N", "[", 
   RowBox[{
    SubscriptBox["X", "0"], "\[LeftDoubleBracket]", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"1", ",", "2", ",", 
       RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], 
   "]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.5927577302722995`"}], ",", "3.163307780879373`", ",", 
     "1.2375801082319826`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
    "2.4395359773435485`", ",", "2.4936758164548483`", ",", 
     "1.782206609362699`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
    "0.5933178240671829`", ",", "2.54002679332862`", ",", 
     "3.547967343509361`"}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"terms", " ", "in", " ", "the", " ", "phonon", " ", 
    RowBox[{"(", "lattice", ")"}], " ", "energy", " ", "depending", " ", "on",
     " ", 
    SubscriptBox["X", 
     RowBox[{"i", ",", "l"}]]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Eph", "[", "Xil_", "]"}], ":=", 
   RowBox[{
    RowBox[{
     FractionBox["1", "2"], 
     SuperscriptBox["\[CapitalOmega]", "2"], 
     SuperscriptBox["Xil", "2"]}], "+", 
    RowBox[{
     FractionBox["1", "2"], 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{
         SubscriptBox["X", 
          RowBox[{"i", ",", 
           RowBox[{"l", "+", "1"}]}]], "-", "Xil"}], "\[CapitalDelta]\[Tau]"],
        ")"}], "2"]}], "+", 
    RowBox[{
     FractionBox["1", "2"], 
     SuperscriptBox[
      RowBox[{"(", 
       FractionBox[
        RowBox[{"Xil", "-", 
         SubscriptBox["X", 
          RowBox[{"i", ",", 
           RowBox[{"l", "-", "1"}]}]]}], "\[CapitalDelta]\[Tau]"], ")"}], 
      "2"]}]}]}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
    "change", " ", "in", " ", "phonon", " ", "energy", " ", "when", " ", 
     "updating", " ", 
     SubscriptBox["X", 
      RowBox[{"i", ",", "l"}]]}], " ", "\[Rule]", " ", 
    RowBox[{
     SubscriptBox["X", 
      RowBox[{"i", ",", "l"}]], "+", "\[CapitalDelta]X"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"FullSimplify", "[", 
   RowBox[{
    RowBox[{"Eph", "[", 
     RowBox[{
      SubscriptBox["X", 
       RowBox[{"i", ",", "l"}]], "+", "\[CapitalDelta]X"}], "]"}], "-", 
    RowBox[{"Eph", "[", 
     SubscriptBox["X", 
      RowBox[{"i", ",", "l"}]], "]"}], "-", 
    RowBox[{"\[CapitalDelta]X", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{
        FractionBox["1", "2"], 
        SuperscriptBox["\[CapitalOmega]", "2"], 
        RowBox[{"(", 
         RowBox[{"\[CapitalDelta]X", "+", 
          RowBox[{"2", " ", 
           SubscriptBox["X", 
            RowBox[{"i", ",", "l"}]]}]}], ")"}]}], "+", 
       FractionBox[
        RowBox[{"\[CapitalDelta]X", "-", 
         RowBox[{"(", 
          RowBox[{
           SubscriptBox["X", 
            RowBox[{"i", ",", 
             RowBox[{"l", "+", "1"}]}]], "-", 
           RowBox[{"2", " ", 
            SubscriptBox["X", 
             RowBox[{"i", ",", "l"}]]}], "+", 
           SubscriptBox["X", 
            RowBox[{"i", ",", 
             RowBox[{"l", "-", "1"}]}]]}], ")"}]}], 
        SuperscriptBox["\[CapitalDelta]\[Tau]", "2"]]}], ")"}]}]}], 
   "]"}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["DQMC step", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "time", " ", "flow", " ", "map", " ", "generated", " ", "by", " ", "the", 
    " ", "Hubbard", " ", "Hamiltonian"}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"HubbardTimeFlowMap", "[", 
    RowBox[{"expK_", ",", "expV_"}], "]"}], ":=", 
   RowBox[{"Fold", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DiagonalMatrix", "[", "#2", "]"}], ".", "expK", ".", "#1"}], 
      "&"}], ",", 
     RowBox[{"IdentityMatrix", "[", 
      RowBox[{"Length", "[", "expK", "]"}], "]"}], ",", 
     RowBox[{"Transpose", "[", "expV", "]"}]}], "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"initialize", " ", "spin"}], "-", 
     RowBox[{"up", " ", "or", " ", "spin"}], "-", 
     RowBox[{"down", " ", 
      RowBox[{"Green", "'"}], "s", " ", "function"}]}], ",", " ", 
    RowBox[{"depending", " ", "on", " ", "the", " ", 
     RowBox[{"(", 
      RowBox[{"\[PlusMinus]", "1"}], ")"}], " ", "prefactor", " ", 
     RowBox[{"of", " ", "'"}], 
     RowBox[{"\[Lambda]", "'"}]}]}], " ", "*)"}], "\n", 
  RowBox[{
   RowBox[{"InitializeGreensFunction", "[", 
    RowBox[{"expK_", ",", "expV_"}], "]"}], ":=", 
   RowBox[{"Inverse", "[", 
    RowBox[{
     RowBox[{"IdentityMatrix", "[", 
      RowBox[{"Length", "[", "expK", "]"}], "]"}], "+", 
     RowBox[{"HubbardTimeFlowMap", "[", 
      RowBox[{"expK", ",", "expV"}], "]"}]}], "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"InitializeUpDownGreensFunctions", "[", 
   RowBox[{"expK_", ",", "\[Lambda]s_", ",", "\[Tau]gX_"}], "]"}], ":=", 
  RowBox[{"{", "\n", "\t", 
   RowBox[{
    RowBox[{"InitializeGreensFunction", "[", 
     RowBox[{"expK", ",", 
      RowBox[{"Exp", "[", 
       RowBox[{
        RowBox[{"-", "\[Lambda]s"}], "-", "\[Tau]gX"}], "]"}]}], "]"}], ",", 
    "\n", "\t", 
    RowBox[{"InitializeGreensFunction", "[", 
     RowBox[{"expK", ",", 
      RowBox[{"Exp", "[", 
       RowBox[{
        RowBox[{"+", "\[Lambda]s"}], "-", "\[Tau]gX"}], "]"}]}], "]"}]}], 
   "}"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"HubbardDQMCPhononStep", "[", 
   RowBox[{
   "expK_", ",", "invexpK_", ",", "\[Tau]_", ",", "\[Lambda]_", ",", 
    "\[CapitalOmega]_", ",", "g_", ",", "boxwidth_", ",", "s0_", ",", "X0_", 
    ",", "siteorderHS_List", ",", "siteorderPh_List", ",", "rnd_List"}], 
   "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"s", "=", "s0"}], ",", 
      RowBox[{"X", "=", "X0"}], ",", "Gu", ",", "Gd", ",", "nsites", ",", "L",
       ",", "\[CapitalDelta]x", ",", "\[CapitalDelta]Eph", ",", "du", ",", 
      "dd", ",", "cu", ",", "cd", ",", "l", ",", "i", ",", "j", ",", 
      RowBox[{"n", "=", "1"}]}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"nsites", ",", "L"}], "}"}], "=", 
      RowBox[{"Dimensions", "[", "s", "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{"compute", " ", "the", " ", "initial", " ", 
       RowBox[{"Green", "'"}], "s", " ", "functions"}], " ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Gu", ",", "Gd"}], "}"}], "=", 
      RowBox[{"InitializeUpDownGreensFunctions", "[", 
       RowBox[{"expK", ",", 
        RowBox[{"\[Lambda]", " ", "s"}], ",", 
        RowBox[{"\[Tau]", " ", "g", " ", "X0"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{"iterate", " ", "over", " ", "time", " ", "slices"}], " ", 
      "*)"}], "\[IndentingNewLine]", 
     RowBox[{"For", "[", 
      RowBox[{
       RowBox[{"l", "=", "1"}], ",", 
       RowBox[{"l", "\[LessEqual]", "L"}], ",", 
       RowBox[{"l", "++"}], ",", "\[IndentingNewLine]", 
       RowBox[{"(*", " ", 
        RowBox[{"Eq", " ", 
         RowBox[{"(", "16", ")"}]}], " ", "*)"}], "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Gu", "=", 
         RowBox[{
          RowBox[{"DiagonalMatrix", "[", 
           RowBox[{"Exp", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "\[Lambda]"}], " ", 
              RowBox[{"s", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}], "-", 
             RowBox[{"\[Tau]", " ", "g", " ", 
              RowBox[{"X", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}]}], "]"}],
            "]"}], ".", "expK", ".", "Gu", ".", "invexpK", ".", 
          RowBox[{"DiagonalMatrix", "[", 
           RowBox[{"Exp", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"+", "\[Lambda]"}], " ", 
              RowBox[{"s", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}], "+", 
             RowBox[{"\[Tau]", " ", "g", " ", 
              RowBox[{"X", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}]}], "]"}],
            "]"}]}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"Gd", "=", 
         RowBox[{
          RowBox[{"DiagonalMatrix", "[", 
           RowBox[{"Exp", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"+", "\[Lambda]"}], " ", 
              RowBox[{"s", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}], "-", 
             RowBox[{"\[Tau]", " ", "g", " ", 
              RowBox[{"X", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}]}], "]"}],
            "]"}], ".", "expK", ".", "Gd", ".", "invexpK", ".", 
          RowBox[{"DiagonalMatrix", "[", 
           RowBox[{"Exp", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"-", "\[Lambda]"}], " ", 
              RowBox[{"s", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}], "+", 
             RowBox[{"\[Tau]", " ", "g", " ", 
              RowBox[{"X", "\[LeftDoubleBracket]", 
               RowBox[{";;", ",", "l"}], "\[RightDoubleBracket]"}]}]}], "]"}],
            "]"}]}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"(*", " ", 
         RowBox[{
          RowBox[{"iterate", " ", "over", " ", "lattice", " ", "sites"}], ",",
           " ", 
          RowBox[{
           RowBox[{"updating", " ", "the", " ", "Hubbard"}], "-", 
           RowBox[{"Stratonovich", " ", "field"}]}]}], " ", "*)"}], 
        "\[IndentingNewLine]", 
        RowBox[{"For", "[", 
         RowBox[{
          RowBox[{"j", "=", "1"}], ",", 
          RowBox[{"j", "\[LessEqual]", "nsites"}], ",", 
          RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"i", "=", 
            RowBox[{"siteorderHS", "\[LeftDoubleBracket]", 
             RowBox[{"l", ",", "j"}], "\[RightDoubleBracket]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"(*", " ", 
            RowBox[{"Eq", " ", 
             RowBox[{"(", "13", ")"}]}], " ", "*)"}], "\[IndentingNewLine]", 
           RowBox[{"(*", " ", 
            RowBox[{"suggest", " ", "flipping", " ", "s", 
             RowBox[{"(", 
              RowBox[{"i", ",", "l"}], ")"}]}], " ", "*)"}], 
           "\[IndentingNewLine]", 
           RowBox[{"du", "=", 
            RowBox[{"1", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"Gu", "\[LeftDoubleBracket]", 
                 RowBox[{"i", ",", "i"}], "\[RightDoubleBracket]"}]}], ")"}], 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Exp", "[", 
                 RowBox[{
                  RowBox[{"+", "2"}], "\[Lambda]", " ", 
                  RowBox[{"s", "\[LeftDoubleBracket]", 
                   RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}]}], 
                 "]"}], "-", "1"}], ")"}]}]}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"dd", "=", 
            RowBox[{"1", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"Gd", "\[LeftDoubleBracket]", 
                 RowBox[{"i", ",", "i"}], "\[RightDoubleBracket]"}]}], ")"}], 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Exp", "[", 
                 RowBox[{
                  RowBox[{"-", "2"}], "\[Lambda]", " ", 
                  RowBox[{"s", "\[LeftDoubleBracket]", 
                   RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}]}], 
                 "]"}], "-", "1"}], ")"}]}]}]}], ";", "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{"(*", 
             RowBox[{"RandomReal", "[", "]"}], "*)"}], 
            RowBox[{
             RowBox[{
              RowBox[{"rnd", "\[LeftDoubleBracket]", 
               RowBox[{"n", "++"}], "\[RightDoubleBracket]"}], "<", 
              RowBox[{"du", " ", "dd"}]}], ",", "\[IndentingNewLine]", 
             RowBox[{"(*", " ", 
              RowBox[{"Eq", " ", 
               RowBox[{"(", "15", ")"}]}], " ", "*)"}], "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"cu", "=", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"Exp", "[", 
                   RowBox[{
                    RowBox[{"+", "2"}], "\[Lambda]", " ", 
                    RowBox[{"s", "\[LeftDoubleBracket]", 
                    RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}]}], 
                   "]"}], "-", "1"}], ")"}], 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"UnitVector", "[", 
                   RowBox[{"nsites", ",", "i"}], "]"}], "-", 
                  RowBox[{
                  "Gu", "\[LeftDoubleBracket]", "i", 
                   "\[RightDoubleBracket]"}]}], ")"}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"cd", "=", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"Exp", "[", 
                   RowBox[{
                    RowBox[{"-", "2"}], "\[Lambda]", " ", 
                    RowBox[{"s", "\[LeftDoubleBracket]", 
                    RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}]}], 
                   "]"}], "-", "1"}], ")"}], 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"UnitVector", "[", 
                   RowBox[{"nsites", ",", "i"}], "]"}], "-", 
                  RowBox[{
                  "Gd", "\[LeftDoubleBracket]", "i", 
                   "\[RightDoubleBracket]"}]}], ")"}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"Gu", "-=", 
               RowBox[{"KroneckerProduct", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Gu", "\[LeftDoubleBracket]", 
                   RowBox[{";;", ",", "i"}], "\[RightDoubleBracket]"}], "/", 
                  RowBox[{"(", 
                   RowBox[{"1", "+", 
                    RowBox[{
                    "cu", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}], ")"}]}], ",", "cu"}], 
                "]"}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"Gd", "-=", 
               RowBox[{"KroneckerProduct", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Gd", "\[LeftDoubleBracket]", 
                   RowBox[{";;", ",", "i"}], "\[RightDoubleBracket]"}], "/", 
                  RowBox[{"(", 
                   RowBox[{"1", "+", 
                    RowBox[{
                    "cd", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}], ")"}]}], ",", "cd"}], 
                "]"}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"(*", " ", 
               RowBox[{"actually", " ", "flip", " ", "spin"}], " ", "*)"}], 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"s", "\[LeftDoubleBracket]", 
                RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}], "=", 
               RowBox[{"-", 
                RowBox[{"s", "\[LeftDoubleBracket]", 
                 RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}]}]}]}]}], 
            "]"}]}]}], "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"(*", " ", 
         RowBox[{
          RowBox[{"iterate", " ", "over", " ", "lattice", " ", "sites"}], ",",
           " ", 
          RowBox[{"updating", " ", "the", " ", "phonon", " ", "field"}]}], 
         " ", "*)"}], "\[IndentingNewLine]", 
        RowBox[{"For", "[", 
         RowBox[{
          RowBox[{"j", "=", "1"}], ",", 
          RowBox[{"j", "\[LessEqual]", "nsites"}], ",", 
          RowBox[{"j", "++"}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"i", "=", 
            RowBox[{"siteorderPh", "\[LeftDoubleBracket]", 
             RowBox[{"l", ",", "j"}], "\[RightDoubleBracket]"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"\[CapitalDelta]x", "=", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{
               RowBox[{"rnd", "\[LeftDoubleBracket]", 
                RowBox[{"n", "++"}], "\[RightDoubleBracket]"}], "-", 
               RowBox[{"1", "/", "2"}]}], ")"}], "boxwidth"}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"\[CapitalDelta]Eph", "=", 
            RowBox[{"\[CapitalDelta]x", 
             RowBox[{"(", 
              RowBox[{
               RowBox[{
                FractionBox["1", "2"], 
                SuperscriptBox["\[CapitalOmega]", "2"], 
                RowBox[{"(", 
                 RowBox[{"\[CapitalDelta]x", "+", 
                  RowBox[{"2", " ", 
                   RowBox[{"X", "\[LeftDoubleBracket]", 
                    RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}]}]}], 
                 ")"}]}], "+", 
               FractionBox[
                RowBox[{"\[CapitalDelta]x", "-", 
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"X", "\[LeftDoubleBracket]", 
                    RowBox[{"i", ",", 
                    RowBox[{"Mod", "[", 
                    RowBox[{
                    RowBox[{"l", "+", "1"}], ",", "L", ",", "1"}], "]"}]}], 
                    "\[RightDoubleBracket]"}], "-", 
                   RowBox[{"2", 
                    RowBox[{"X", "\[LeftDoubleBracket]", 
                    RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}]}], "+", 
                   RowBox[{"X", "\[LeftDoubleBracket]", 
                    RowBox[{"i", ",", 
                    RowBox[{"Mod", "[", 
                    RowBox[{
                    RowBox[{"l", "-", "1"}], ",", "L", ",", "1"}], "]"}]}], 
                    "\[RightDoubleBracket]"}]}], ")"}]}], 
                SuperscriptBox["\[Tau]", "2"]]}], ")"}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"du", "=", 
            RowBox[{"1", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"Gu", "\[LeftDoubleBracket]", 
                 RowBox[{"i", ",", "i"}], "\[RightDoubleBracket]"}]}], ")"}], 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Exp", "[", 
                 RowBox[{
                  RowBox[{"-", "\[Tau]"}], " ", "g", " ", 
                  "\[CapitalDelta]x"}], "]"}], "-", "1"}], ")"}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"dd", "=", 
            RowBox[{"1", "+", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"1", "-", 
                RowBox[{"Gd", "\[LeftDoubleBracket]", 
                 RowBox[{"i", ",", "i"}], "\[RightDoubleBracket]"}]}], ")"}], 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Exp", "[", 
                 RowBox[{
                  RowBox[{"-", "\[Tau]"}], " ", "g", " ", 
                  "\[CapitalDelta]x"}], "]"}], "-", "1"}], ")"}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{"(*", 
             RowBox[{"RandomReal", "[", "]"}], "*)"}], 
            RowBox[{
             RowBox[{
              RowBox[{"rnd", "\[LeftDoubleBracket]", 
               RowBox[{"n", "++"}], "\[RightDoubleBracket]"}], "<", 
              RowBox[{"du", " ", "dd", " ", 
               RowBox[{"Exp", "[", 
                RowBox[{
                 RowBox[{"-", "\[Tau]"}], " ", "\[CapitalDelta]Eph"}], 
                "]"}]}]}], ",", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"cu", "=", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"Exp", "[", 
                   RowBox[{
                    RowBox[{"-", "\[Tau]"}], " ", "g", " ", 
                    "\[CapitalDelta]x"}], "]"}], "-", "1"}], ")"}], 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"UnitVector", "[", 
                   RowBox[{"nsites", ",", "i"}], "]"}], "-", 
                  RowBox[{
                  "Gu", "\[LeftDoubleBracket]", "i", 
                   "\[RightDoubleBracket]"}]}], ")"}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"cd", "=", 
               RowBox[{
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"Exp", "[", 
                   RowBox[{
                    RowBox[{"-", "\[Tau]"}], " ", "g", " ", 
                    "\[CapitalDelta]x"}], "]"}], "-", "1"}], ")"}], 
                RowBox[{"(", 
                 RowBox[{
                  RowBox[{"UnitVector", "[", 
                   RowBox[{"nsites", ",", "i"}], "]"}], "-", 
                  RowBox[{
                  "Gd", "\[LeftDoubleBracket]", "i", 
                   "\[RightDoubleBracket]"}]}], ")"}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{"Gu", "-=", 
               RowBox[{"KroneckerProduct", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Gu", "\[LeftDoubleBracket]", 
                   RowBox[{";;", ",", "i"}], "\[RightDoubleBracket]"}], "/", 
                  RowBox[{"(", 
                   RowBox[{"1", "+", 
                    RowBox[{
                    "cu", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}], ")"}]}], ",", "cu"}], 
                "]"}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"Gd", "-=", 
               RowBox[{"KroneckerProduct", "[", 
                RowBox[{
                 RowBox[{
                  RowBox[{"Gd", "\[LeftDoubleBracket]", 
                   RowBox[{";;", ",", "i"}], "\[RightDoubleBracket]"}], "/", 
                  RowBox[{"(", 
                   RowBox[{"1", "+", 
                    RowBox[{
                    "cd", "\[LeftDoubleBracket]", "i", 
                    "\[RightDoubleBracket]"}]}], ")"}]}], ",", "cd"}], 
                "]"}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"(*", " ", 
               RowBox[{
               "actually", " ", "update", " ", "phonon", " ", "field"}], " ", 
               "*)"}], "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"X", "\[LeftDoubleBracket]", 
                RowBox[{"i", ",", "l"}], "\[RightDoubleBracket]"}], "+=", 
               "\[CapitalDelta]x"}]}]}], "]"}]}]}], "]"}]}]}], "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"(*", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"return", " ", "updated", " ", "Hubbard"}], "-", 
        RowBox[{"Stratonovich", " ", "field"}]}], ",", " ", 
       RowBox[{
        RowBox[{"phonon", " ", "field", " ", "and", " ", "spin"}], "-", 
        RowBox[{"up", " ", "and", " ", "spin"}], "-", 
        RowBox[{"down", " ", 
         RowBox[{"Green", "'"}], "s", " ", "functions"}]}]}], " ", "*)"}], 
     "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{"s", ",", "X", ",", "Gu", ",", "Gd"}], "}"}]}]}], 
   "]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["fn", "base"], "=", 
   RowBox[{
    RowBox[{"NotebookDirectory", "[", "]"}], "<>", 
    RowBox[{"FileBaseName", "[", 
     RowBox[{"NotebookFileName", "[", "]"}], "]"}]}]}], ";"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{
     RowBox[{"load", " ", "pre"}], "-", 
     RowBox[{
     "computed", " ", "random", " ", "numbers", " ", "from", " ", "disk"}]}], 
    ",", " ", 
    RowBox[{
    "to", " ", "enable", " ", "same", " ", "execution", " ", "path", " ", 
     "as", " ", "C", " ", "implementation"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["rnd", "list"], "=", 
     RowBox[{"Import", "[", 
      RowBox[{
       RowBox[{
        SubscriptBox["fn", "base"], "<>", "\"\<_rnd.dat\>\""}], ",", 
       "\"\<Real64\>\""}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"Length", "[", "%", "]"}]}]}]], "Input"],

Cell[BoxData["1152"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["rnd", "list"], "\[LeftDoubleBracket]", 
   RowBox[{"{", 
    RowBox[{"1", ",", "2", ",", 
     RowBox[{"-", "1"}]}], "}"}], "\[RightDoubleBracket]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0.8915577426527812`", ",", "0.27670149969199476`", ",", 
   "0.3825412917734885`"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"pre", "-", 
    RowBox[{
    "determined", " ", "site", " ", "update", " ", "ordering", " ", "for", 
     " ", "the", " ", "Hubbard"}], "-", 
    RowBox[{"Stratonovich", " ", "field"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["site", 
      RowBox[{"order", ",", "HS"}]], "=", 
     RowBox[{"Partition", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Import", "[", 
         RowBox[{
          RowBox[{
           SubscriptBox["fn", "base"], "<>", "\"\<_siteorderHS.dat\>\""}], 
          ",", "\"\<Integer32\>\""}], "]"}], "+", "1"}], ",", 
       SubscriptBox["n", "sites"]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"Dimensions", "[", "%", "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"16", ",", "24"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"pre", "-", 
    RowBox[{
    "determined", " ", "site", " ", "update", " ", "ordering", " ", "for", 
     " ", "the", " ", "phonon", " ", "field"}]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["site", 
      RowBox[{"order", ",", "ph"}]], "=", 
     RowBox[{"Partition", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"Import", "[", 
         RowBox[{
          RowBox[{
           SubscriptBox["fn", "base"], "<>", "\"\<_siteorderPh.dat\>\""}], 
          ",", "\"\<Integer32\>\""}], "]"}], "+", "1"}], ",", 
       SubscriptBox["n", "sites"]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
   RowBox[{"Dimensions", "[", "%", "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"16", ",", "24"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "check", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Total", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Norm", "[", 
       RowBox[{
        RowBox[{"Sort", "[", "#", "]"}], "-", 
        RowBox[{"Range", "[", 
         SubscriptBox["n", "sites"], "]"}]}], "]"}], "&"}], "/@", 
     SubscriptBox["site", 
      RowBox[{"order", ",", "HS"}]]}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"Total", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"Norm", "[", 
       RowBox[{
        RowBox[{"Sort", "[", "#", "]"}], "-", 
        RowBox[{"Range", "[", 
         SubscriptBox["n", "sites"], "]"}]}], "]"}], "&"}], "/@", 
     SubscriptBox["site", 
      RowBox[{"order", ",", "ph"}]]}], "]"}]}]}]], "Input"],

Cell[BoxData["0"], "Output"],

Cell[BoxData["0"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"perform", " ", "simulation", " ", "step"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      SubscriptBox["s", "1"], ",", 
      SubscriptBox["X", "1"], ",", 
      SubscriptBox["G", 
       RowBox[{"u", ",", "1"}]], ",", 
      SubscriptBox["G", 
       RowBox[{"d", ",", "1"}]]}], "}"}], "=", 
    RowBox[{"Block", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"$MinPrecision", "=", 
        RowBox[{"4", "MachinePrecision"}]}], "}"}], ",", 
      RowBox[{"HubbardDQMCPhononStep", "[", 
       RowBox[{
        SubscriptBox["exp", "\[Tau]k"], ",", 
        SubscriptBox["invexp", "\[Tau]k"], ",", 
        SubscriptBox["\[Tau]", "val"], ",", 
        SubscriptBox["\[Lambda]", "val"], ",", 
        SubscriptBox["\[CapitalOmega]", "val"], ",", 
        SubscriptBox["g", "val"], ",", 
        SubscriptBox["box", "width"], ",", 
        SubscriptBox["s", "0"], ",", 
        SubscriptBox["X", "0"], ",", 
        SubscriptBox["site", 
         RowBox[{"order", ",", "HS"}]], ",", 
        SubscriptBox["site", 
         RowBox[{"order", ",", "ph"}]], ",", 
        RowBox[{"SetPrecision", "[", 
         RowBox[{
          SubscriptBox["rnd", "list"], ",", 
          RowBox[{"4", "MachinePrecision"}]}], "]"}]}], "]"}]}], "]"}]}], 
   ";"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"compare", " ", "updated", " ", 
    RowBox[{"Green", "'"}], "s", " ", "functions", " ", "with", " ", 
    "recomputed", " ", 
    RowBox[{"Green", "'"}], "s", " ", "functions"}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"Norm", "[", 
   RowBox[{"Flatten", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       SubscriptBox["G", 
        RowBox[{"u", ",", "1"}]], ",", 
       SubscriptBox["G", 
        RowBox[{"d", ",", "1"}]]}], "}"}], "-", 
     RowBox[{"InitializeUpDownGreensFunctions", "[", 
      RowBox[{
       SubscriptBox["exp", "\[Tau]k"], ",", 
       RowBox[{
        SubscriptBox["\[Lambda]", "val"], 
        SubscriptBox["s", "1"]}], ",", 
       RowBox[{
        SubscriptBox["\[Tau]", "val"], 
        SubscriptBox["g", "val"], 
        SubscriptBox["X", "1"]}]}], "]"}]}], "]"}], "]"}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["s", "1"], "\[LeftDoubleBracket]", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", 
      RowBox[{"-", "1"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"1", ",", "2", ",", 
      RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"1", ",", 
     RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1"}], ",", "1", ",", 
     RowBox[{"-", "1"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1", ",", 
     RowBox[{"-", "1"}], ",", "1"}], "}"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Flatten", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"Transpose", "[", 
     SubscriptBox["s", "1"], "]"}], "/.", 
    RowBox[{"{", 
     RowBox[{"1", "\[Rule]", "0"}], "}"}]}], "/.", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1"}], "\[Rule]", "1"}], "}"}]}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", 
   "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", 
   "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "0", ",", "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", 
   ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", 
   "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", 
   ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", ",", "0", 
   ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", 
   "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", 
   "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", 
   "0", ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "0", 
   ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", 
   "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", 
   ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", 
   ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", 
   "0", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", 
   ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", 
   "1", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", 
   "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", 
   ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", 
   "1", ",", "0", ",", "0", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", 
   ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", 
   "1", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", ",", "0", ",", "1", 
   ",", "1", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", "1", ",", 
   "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "0", ",", "1", 
   ",", "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "0", ",", "1", ",", 
   "0", ",", "0", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", "1", 
   ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", ",", "1", ",", 
   "0", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", 
   ",", "1", ",", "1", ",", "1", ",", "0", ",", "1", ",", "1", ",", "1", ",", 
   "0", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", "1", 
   ",", "0"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{
     SubscriptBox["G", 
      RowBox[{"u", ",", "1"}]], "\[LeftDoubleBracket]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "//", 
    "MatrixForm"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     SubscriptBox["G", 
      RowBox[{"d", ",", "1"}]], "\[LeftDoubleBracket]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"1", ",", "2", ",", 
        RowBox[{"-", "1"}]}], "}"}]}], "\[RightDoubleBracket]"}], "//", 
    "MatrixForm"}]}]}]], "Input"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0.778069506278370652728905957759803132011022905313433102650307772800151\
831325786987456166494140518`63.81835908076401", 
      RowBox[{
      "-", "0.0312750596834502932092628545463886812477747130556672627334969200\
87487052845865723042726243227354`63.81835908076401"}], 
      RowBox[{
      "-", "0.0095253564870990887288183484424822276605010371982628163057510658\
85856091882422217866541584455514`63.81835908076401"}]},
     {
      RowBox[{
      "-", "0.2088721248740470100940628783697244372635154149273060880844945077\
47573923947353302061772863139216`63.81835908076401"}], 
      "0.045403354107017039556475804291471532940313867761175085880954635988518\
760289336760941522901703128`63.81835908076401", 
      "0.036722005968195388672531304187234541759670655281059251151767045959133\
961381036648063539437785795`63.81835908076402"},
     {"0.269360764799079866132684225620422392001194985530051600227097767608785\
11366325543564453176035553`63.81835908076401", 
      "0.044200583147796758900217048765442578883360510861026630139599623440127\
422841046947119214779167523`63.81835908076401", 
      "0.774369485388263674169528093124865787791751506625288251348114546088530\
002453976101386017032506394`63.81835908076401"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"],

Cell[BoxData[
 TagBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0.404113860699107911469450311016205682593876282641772171925252011875810\
595488972986122957290739205`63.81835908076401", 
      RowBox[{
      "-", "0.4096649249460354004256389337380670346961363458414283710096739615\
0437087165602353122863827719519`63.81835908076401"}], 
      RowBox[{
      "-", "0.5738271498286486991077395949333387084774968201253061751297939761\
64942652657657725214857558417941`63.81835908076401"}]},
     {
      RowBox[{
      "-", "0.0246421152706400729039506971556852589729700108855079434804155014\
90966116040195504150905131988821`63.81835908076401"}], 
      "0.959889403402211121280994080536429226059122157326692968570218569815328\
586639549330012922494262329`63.81835908076401", 
      "0.021619626808445989856300138310220059071563912952329883375687200441692\
210104548566681494215876692`63.81835908076401"},
     {"0.011113048024110957093401786867242637951758827121406719308074900556452\
852517159300847316133620808`63.81835908076401", 
      "0.045401593706318733899967856387931839732754700422415115847711667004409\
711395486354369698584418357`63.81835908076401", 
      "0.350633880072382729583308023898361930762682717386365734660519949059285\
064770670083932210148497517`63.81835908076401"}
    },
    GridBoxAlignment->{
     "Columns" -> {{Center}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, 
      "RowsIndexed" -> {}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}, "RowsIndexed" -> {}}], "\[NoBreak]", ")"}],
  Function[BoxForm`e$, 
   MatrixForm[BoxForm`e$]]]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"largest", " ", "entries"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Max", "[", 
    RowBox[{"Flatten", "[", 
     RowBox[{"Abs", "[", 
      RowBox[{"N", "[", 
       SubscriptBox["G", 
        RowBox[{"u", ",", "1"}]], "]"}], "]"}], "]"}], "]"}], 
   "\[IndentingNewLine]", 
   RowBox[{"Max", "[", 
    RowBox[{"Flatten", "[", 
     RowBox[{"Abs", "[", 
      RowBox[{"N", "[", 
       SubscriptBox["G", 
        RowBox[{"d", ",", "1"}]], "]"}], "]"}], "]"}], "]"}]}]}]], "Input"],

Cell[BoxData["1.4304523833086733`"], "Output"],

Cell[BoxData["1.004114692381533`"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "determinants", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["detG", 
     RowBox[{"u", ",", "1"}]], "=", 
    RowBox[{"Det", "[", 
     SubscriptBox["G", 
      RowBox[{"u", ",", "1"}]], "]"}]}], "\[IndentingNewLine]", 
   RowBox[{
    SubscriptBox["detG", 
     RowBox[{"d", ",", "1"}]], "=", 
    RowBox[{"Det", "[", 
     SubscriptBox["G", 
      RowBox[{"d", ",", "1"}]], "]"}]}]}]}]], "Input"],

Cell[BoxData["4.\
479459377396951393380520601107666297070175205334850259979126498227031357604503\
083565031896`63.81835908076401*^-45"], "Output"],

Cell[BoxData["1.\
385550464090818653047938676498075333145644723268058512258545376434616639583877\
582216`63.81835908076401*^-31"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "save", " ", "initial", " ", "and", " ", "updated", " ", "phonon", " ", 
    "fields", " ", "to", " ", "disk"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"Export", "[", 
      RowBox[{
       RowBox[{
        SubscriptBox["fn", "base"], "<>", "\"\<_X\>\"", "<>", 
        RowBox[{"ToString", "[", "i", "]"}], "<>", "\"\<.dat\>\""}], ",", 
       RowBox[{"Flatten", "[", 
        RowBox[{"Transpose", "[", 
         RowBox[{"N", "[", 
          SubscriptBox["X", "i"], "]"}], "]"}], "]"}], ",", 
       "\"\<Real64\>\""}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "0", ",", "1"}], "}"}]}], "]"}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"save", " ", "updated", " ", 
    RowBox[{"Green", "'"}], "s", " ", "functions", " ", "to", " ", "disk"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Export", "[", 
       RowBox[{
        RowBox[{
         SubscriptBox["fn", "base"], "<>", "\"\<_G\>\"", "<>", 
         RowBox[{"ToString", "[", "\[Sigma]", "]"}], "<>", "\"\<1.dat\>\""}], 
        ",", 
        RowBox[{"Flatten", "[", 
         RowBox[{"Transpose", "[", 
          RowBox[{"N", "[", 
           SubscriptBox["G", 
            RowBox[{"\[Sigma]", ",", "1"}]], "]"}], "]"}], "]"}], ",", 
        "\"\<Real64\>\""}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Sigma]", ",", 
        RowBox[{"{", 
         RowBox[{"u", ",", "d"}], "}"}]}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"Export", "[", 
       RowBox[{
        RowBox[{
         SubscriptBox["fn", "base"], "<>", "\"\<_detG\>\"", "<>", 
         RowBox[{"ToString", "[", "\[Sigma]", "]"}], "<>", "\"\<1.dat\>\""}], 
        ",", 
        RowBox[{"N", "[", 
         SubscriptBox["detG", 
          RowBox[{"\[Sigma]", ",", "1"}]], "]"}], ",", "\"\<Real64\>\""}], 
       "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Sigma]", ",", 
        RowBox[{"{", 
         RowBox[{"u", ",", "d"}], "}"}]}], "}"}]}], "]"}], ";"}]}]}]], "Input"]
}, Open  ]]
},
WindowSize->{1508, 978},
WindowMargins->{{Automatic, 157}, {Automatic, 70}},
FrontEndVersion->"10.0 for Microsoft Windows (64-bit) (July 1, 2014)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 40, 0, 43, "Subsection"],
Cell[CellGroupData[{
Cell[1551, 39, 326, 10, 72, "Input"],
Cell[1880, 51, 31, 0, 31, "Output"]
}, Open  ]],
Cell[1926, 54, 219, 7, 52, "Input"],
Cell[2148, 63, 261, 8, 67, "Input"],
Cell[CellGroupData[{
Cell[2434, 75, 337, 11, 52, "Input"],
Cell[2774, 88, 46, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2857, 93, 295, 9, 69, "Input"],
Cell[3155, 104, 29, 0, 31, "Output"]
}, Open  ]],
Cell[3199, 107, 248, 7, 52, "Input"],
Cell[3450, 116, 287, 9, 52, "Input"],
Cell[3740, 127, 315, 9, 52, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4092, 141, 41, 0, 43, "Subsection"],
Cell[4136, 143, 320, 10, 72, "Input"],
Cell[CellGroupData[{
Cell[4481, 157, 947, 29, 72, "Input"],
Cell[5431, 188, 1469, 50, 52, "Output"],
Cell[6903, 240, 74, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7014, 247, 295, 8, 52, "Input"],
Cell[7312, 257, 29, 0, 31, "Output"]
}, Open  ]],
Cell[7356, 260, 1075, 30, 52, "Input"],
Cell[CellGroupData[{
Cell[8456, 294, 333, 10, 72, "Input"],
Cell[8792, 306, 28, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8857, 311, 355, 10, 52, "Input"],
Cell[9215, 323, 28, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[9292, 329, 45, 0, 43, "Subsection"],
Cell[9340, 331, 1023, 32, 72, "Input"],
Cell[CellGroupData[{
Cell[10388, 367, 442, 13, 52, "Input"],
Cell[10833, 382, 4754, 143, 129, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15624, 530, 511, 15, 52, "Input"],
Cell[16138, 547, 787, 18, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16962, 570, 371, 10, 52, "Input"],
Cell[17336, 582, 28, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17401, 587, 874, 28, 72, "Input"],
Cell[18278, 617, 49, 0, 31, "Output"],
Cell[18330, 619, 50, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[18429, 625, 48, 0, 43, "Subsection"],
Cell[CellGroupData[{
Cell[18502, 629, 556, 18, 72, "Input"],
Cell[19061, 649, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[19173, 656, 388, 11, 52, "Input"],
Cell[19564, 669, 407, 15, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20008, 689, 305, 10, 31, "Input"],
Cell[20316, 701, 4100, 54, 152, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[24465, 761, 34, 0, 43, "Subsection"],
Cell[CellGroupData[{
Cell[24524, 765, 588, 18, 72, "Input"],
Cell[25115, 785, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25227, 792, 429, 13, 52, "Input"],
Cell[25659, 807, 466, 14, 31, "Output"]
}, Open  ]],
Cell[26140, 824, 1068, 34, 69, "Input"],
Cell[CellGroupData[{
Cell[27233, 862, 1530, 47, 68, "Input"],
Cell[28766, 911, 28, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[28843, 917, 31, 0, 43, "Subsection"],
Cell[28877, 919, 625, 17, 52, "Input"],
Cell[29505, 938, 843, 22, 52, "Input"],
Cell[30351, 962, 612, 17, 72, "Input"],
Cell[30966, 981, 17840, 409, 888, "Input"],
Cell[48809, 1392, 242, 7, 31, "Input"],
Cell[CellGroupData[{
Cell[49076, 1403, 720, 22, 72, "Input"],
Cell[49799, 1427, 31, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49867, 1432, 283, 7, 52, "Input"],
Cell[50153, 1441, 145, 4, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50335, 1450, 795, 23, 72, "Input"],
Cell[51133, 1475, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[51245, 1482, 758, 22, 72, "Input"],
Cell[52006, 1506, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52118, 1513, 769, 23, 72, "Input"],
Cell[52890, 1538, 28, 0, 31, "Output"],
Cell[52921, 1540, 28, 0, 31, "Output"]
}, Open  ]],
Cell[52964, 1543, 1375, 39, 72, "Input"],
Cell[CellGroupData[{
Cell[54364, 1586, 891, 26, 52, "Input"],
Cell[55258, 1614, 28, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[55323, 1619, 388, 11, 52, "Input"],
Cell[55714, 1632, 344, 12, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[56095, 1649, 305, 10, 31, "Input"],
Cell[56403, 1661, 4100, 54, 152, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[60540, 1720, 877, 27, 72, "Input"],
Cell[61420, 1749, 1784, 37, 71, "Output"],
Cell[63207, 1788, 1784, 37, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65028, 1830, 559, 17, 72, "Input"],
Cell[65590, 1849, 46, 0, 31, "Output"],
Cell[65639, 1851, 45, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[65721, 1856, 476, 15, 72, "Input"],
Cell[66200, 1873, 146, 2, 31, "Output"],
Cell[66349, 1877, 140, 2, 31, "Output"]
}, Open  ]],
Cell[66504, 1882, 749, 20, 52, "Input"],
Cell[67256, 1904, 1483, 43, 72, "Input"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature rxD#pdXOmEzq6BgiIDH6k0V2 *)