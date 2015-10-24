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
NotebookDataLength[     38606,       1174]
NotebookOptionsPosition[     36230,       1071]
NotebookOutlinePosition[     36573,       1086]
CellTagsIndexPosition[     36530,       1083]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

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
   RowBox[{"time", " ", "step"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[Tau]", "val"], "=", 
    FractionBox["1", "8"]}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"chemical", " ", "potential"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["\[Mu]", "val"], "=", 
    FractionBox["2", "9"]}], ";"}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["k", "val"], "=", 
   RowBox[{
    RowBox[{"-", 
     SubscriptBox["latt", "neigh"]}], "-", 
    RowBox[{
     SubscriptBox["\[Mu]", "val"], 
     RowBox[{"IdentityMatrix", "[", 
      SubscriptBox["n", "sites"], "]"}]}]}]}], ";"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"symbolic", " ", 
    SuperscriptBox["\[ExponentialE]", 
     RowBox[{
      RowBox[{"-", "\[Tau]"}], " ", "k"}]]}], " ", "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["exp", "\[Tau]k"], "=", 
    RowBox[{"FullSimplify", "[", 
     RowBox[{"MatrixExp", "[", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Tau]", "val"]}], 
       SubscriptBox["k", "val"]}], "]"}], "]"}]}], ";"}]}]], "Input"],

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
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "8"}]]}], "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"3", "/", "8"}]]}], "+", 
          SqrtBox["\[ExponentialE]"]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]], 
      FractionBox[
       RowBox[{
        RowBox[{"-", "1"}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"1", "/", "8"}]]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"3", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"5", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"7", "/", "8"}]]}], "+", "\[ExponentialE]"}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]]},
     {
      FractionBox[
       RowBox[{
        RowBox[{"-", "1"}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"1", "/", "8"}]]}], "-", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"3", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"5", "/", "8"}]]}], "+", 
        RowBox[{"2", " ", 
         SuperscriptBox["\[ExponentialE]", 
          RowBox[{"7", "/", "8"}]]}], "+", "\[ExponentialE]"}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "8"}]]}], "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"3", "/", "8"}]]}], "+", 
          SqrtBox["\[ExponentialE]"]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]], 
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
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]]},
     {
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "1"}], "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "8"}]], "+", 
          SuperscriptBox["\[ExponentialE]", 
           RowBox[{"1", "/", "4"}]]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]], 
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
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]], 
      FractionBox[
       RowBox[{
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"1", "+", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "4"}]]}], ")"}], "2"], " ", 
        RowBox[{"(", 
         RowBox[{"1", "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"1", "/", "8"}]]}], "+", 
          RowBox[{"2", " ", 
           SuperscriptBox["\[ExponentialE]", 
            RowBox[{"3", "/", "8"}]]}], "+", 
          SqrtBox["\[ExponentialE]"]}], ")"}]}], 
       RowBox[{"24", " ", 
        SuperscriptBox["\[ExponentialE]", 
         RowBox[{"17", "/", "36"}]]}]]}
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
     {"1.0606974380474052`", "0.13190091039263657`", "0.01636016477559483`"},
     {"0.13190091039263657`", "1.0606974380474052`", "0.0020344355993231495`"},
     {"0.01636016477559483`", "0.0020344355993231495`", "1.0606974380474052`"}
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
   RowBox[{"compare", " ", "with", " ", "numerical", " ", "evaluation"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Norm", "[", 
   RowBox[{
    SubscriptBox["exp", "\[Tau]k"], "-", 
    RowBox[{"MatrixExp", "[", 
     RowBox[{"N", "[", 
      RowBox[{
       RowBox[{"-", 
        SubscriptBox["\[Tau]", "val"]}], 
       SubscriptBox["k", "val"]}], "]"}], "]"}]}], "]"}]}]], "Input"],

Cell[BoxData["9.09095127115429`*^-16"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Hubbard-Stratonovich field", "Subsection"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"SeedRandom", "[", "42", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Block", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"\[Beta]", "=", "2"}], ",", "L"}], "}"}], ",", 
    RowBox[{
     RowBox[{"L", "=", 
      FractionBox["\[Beta]", 
       SubscriptBox["\[Tau]", "val"]]}], ";", 
     RowBox[{
      SubscriptBox["s", "val"], "=", 
      RowBox[{
       RowBox[{"2", 
        RowBox[{"RandomInteger", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"0", ",", "1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{
            SubscriptBox["n", "sites"], ",", "L"}], "}"}]}], "]"}]}], "-", 
       "1"}]}]}]}], "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", 
  SubscriptBox["s", "val"], "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "16"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "examples", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["s", "val"], "\[LeftDoubleBracket]", 
    RowBox[{";;", ",", "1"}], "\[RightDoubleBracket]"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    SubscriptBox["s", "val"], "\[LeftDoubleBracket]", 
    RowBox[{";;", ",", "2"}], "\[RightDoubleBracket]"}], 
   "\[IndentingNewLine]", 
   RowBox[{
    SubscriptBox["s", "val"], "\[LeftDoubleBracket]", 
    RowBox[{";;", ",", 
     RowBox[{"-", "1"}]}], "\[RightDoubleBracket]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}]}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", 
   "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1"}], "}"}]], "Output"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}]}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"Flatten", "[", 
    RowBox[{"Transpose", "[", 
     SubscriptBox["s", "val"], "]"}], "]"}], "/.", 
   RowBox[{"{", 
    RowBox[{"1", "\[Rule]", "0"}], "}"}]}], "/.", 
  RowBox[{"{", 
   RowBox[{
    RowBox[{"-", "1"}], "\[Rule]", "1"}], "}"}]}]], "Input"],

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

Cell["Calculate time flow map", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "time", " ", "flow", " ", "map", " ", "generated", " ", "by", " ", "the", 
    " ", "Hubbard", " ", "Hamiltonian"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"HubbardTimeFlowMap", "[", 
    RowBox[{"\[Lambda]s_", ",", "exp\[Tau]k_"}], "]"}], ":=", 
   RowBox[{"Fold", "[", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"DiagonalMatrix", "[", 
        RowBox[{"Exp", "[", 
         RowBox[{"-", "#2"}], "]"}], "]"}], ".", "exp\[Tau]k", ".", "#1"}], 
      "&"}], ",", 
     RowBox[{"IdentityMatrix", "[", 
      RowBox[{"Length", "[", "exp\[Tau]k", "]"}], "]"}], ",", 
     RowBox[{"Transpose", "[", "\[Lambda]s", "]"}]}], "]"}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["\[Lambda]", "val"], "=", 
   RowBox[{"3", "/", "4"}]}], ";"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   SubscriptBox["A", "val"], "=", 
   RowBox[{"HubbardTimeFlowMap", "[", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[Lambda]", "val"], 
      SubscriptBox["s", "val"]}], ",", 
     RowBox[{"N", "[", 
      RowBox[{
       SubscriptBox["exp", "\[Tau]k"], ",", 
       RowBox[{"2", "MachinePrecision"}]}], "]"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", "%", "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "24"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["A", "val"], "\[LeftDoubleBracket]", 
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
     {"97428.5936486938329377620461793963902093869087515011721302372108`30.\
70505955772606", 
      "254818.7377775096907163375285566306956946651154933991298360027178`30.\
705059557726084", 
      "125697.0993492373022502652317140097707825383073114190053233148737`30.\
705059557726102"},
     {"60662.91197172002760875748380515741235965715183641817152059804`30.\
70505955772609", 
      "163336.3571507031069314332174647836198345305890248076478047228284`30.\
705059557726095", 
      "84822.934091511932130861045359756846048113679101454849367798615`30.\
705059557726084"},
     {"28076.8117290623874957073167096885757110982279017743870144374317`30.\
705059557726074", 
      "76499.7812471867633388403191201506182715155137642857279693335844`30.\
705059557726084", 
      "45863.5685884798574820256079452047033386134352025055438390176717`30.\
70505955772609"}
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

Cell[BoxData[{
 RowBox[{
  RowBox[{"N", "[", 
   RowBox[{"SingularValueList", "[", 
    SubscriptBox["A", "val"], "]"}], "]"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"condition", " ", "number", " ", "is", " ", "very", " ", "large"}],
    " ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Max", "[", "%", "]"}], "/", 
  RowBox[{"Min", "[", "%", "]"}]}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.42170302730388`*^6", ",", "123267.42935676924`", ",", 
   "87999.15446886628`", ",", "10425.916341222148`", ",", 
   "2334.8866004685137`", ",", "1619.3033475687316`", ",", 
   "595.4821712810838`", ",", "268.4266748873143`", ",", 
   "142.67168089576182`", ",", "59.45886922633707`", ",", 
   "18.269992053014107`", ",", "12.52761212111636`", ",", 
   "5.799762311579807`", ",", "1.543243913335501`", ",", 
   "0.8306258275427156`", ",", "0.15213991594333426`", ",", 
   "0.14165474379828583`", ",", "0.08542903039129231`", ",", 
   "0.045655326410999716`", ",", "0.0045570318945651125`", ",", 
   "0.0016791418198350589`", ",", "0.0003205092907079958`", ",", 
   "0.00012296057553176423`", ",", "0.000012894724461764964`"}], 
  "}"}]], "Output"],

Cell[BoxData["1.1025462634114204`*^11"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"after", " ", "adding", " ", "identity"}], ",", " ", 
    RowBox[{
    "smallest", " ", "singular", " ", "value", " ", "now", " ", "of", " ", 
     "order", " ", "1"}]}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"N", "[", 
    RowBox[{"SingularValueList", "[", 
     RowBox[{
      RowBox[{"IdentityMatrix", "[", 
       SubscriptBox["n", "sites"], "]"}], "+", 
      SubscriptBox["A", "val"]}], "]"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{"condition", " ", "number"}], " ", "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Max", "[", "%", "]"}], "/", 
    RowBox[{"Min", "[", "%", "]"}]}]}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.421703548130283`*^6", ",", "123267.98598068`", ",", "87999.60404685742`",
    ",", "10426.349312396278`", ",", "2335.4037264685003`", ",", 
   "1619.6846452927218`", ",", "596.1463626012979`", ",", 
   "269.03995232967793`", ",", "143.24958289460858`", ",", 
   "59.91267233850111`", ",", "18.9706119752494`", ",", "13.2260917267029`", 
   ",", "6.354161399658463`", ",", "2.236728809128842`", ",", 
   "1.5709425222438864`", ",", "1.054184382494221`", ",", 
   "0.9681912733876232`", ",", "0.9506419786791064`", ",", 
   "0.8688047616579007`", ",", "0.8111555405462507`", ",", 
   "0.7459082051419303`", ",", "0.6583380371628063`", ",", 
   "0.5840878883547239`", ",", "0.557458845535791`"}], "}"}]], "Output"],

Cell[BoxData["2.5503291579557583`*^6"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Calculate Green\[CloseCurlyQuote]s function matrix", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["G", "val"], "=", 
   RowBox[{"Inverse", "[", 
    RowBox[{
     RowBox[{"IdentityMatrix", "[", 
      SubscriptBox["n", "sites"], "]"}], "+", 
     SubscriptBox["A", "val"]}], "]"}]}], ";"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["G", "val"], "\[LeftDoubleBracket]", 
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
     {"0.2051983309172633181214775238292077445546136669330543317455`30.\
70505955772603", 
      RowBox[{
      "-", "0.2120242314260858860510628795785216474991690770763452709758`30.\
70505955772603"}], 
      RowBox[{
      "-", "0.0734119186308509333121766852538726471211093137367489963724`30.\
70505955772603"}]},
     {
      RowBox[{
      "-", "0.0562587663016900858117338684570614084346992564493994865719`30.\
70505955772603"}], 
      "0.0824776575993711687215290937899273414613690455435202377029`30.\
70505955772603", 
      "0.0602448175269851168124014271236853513520382574759158716766`30.\
70505955772603"},
     {"0.0025389810998580508063530776769739121635685308572947978286`30.\
70505955772603", 
      "0.031337447044352766475871543409620393252060855007727745442`30.\
70505955772603", 
      "0.2143250410626462555645524735647243633396843719199621083562`30.\
70505955772603"}
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
 RowBox[{"N", "[", 
  RowBox[{"SingularValueList", "[", 
   SubscriptBox["G", "val"], "]"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
  "1.7938543948277814`", ",", "1.7120711111076616`", ",", 
   "1.5189764885979102`", ",", "1.3406475396120914`", ",", 
   "1.2328091839532738`", ",", "1.151006582988502`", ",", 
   "1.0519207256021612`", ",", "1.0328537629771033`", ",", 
   "0.9486006590554684`", ",", "0.6365605270978536`", ",", 
   "0.44708146822210365`", ",", "0.15737717963124923`", ",", 
   "0.07560812526205635`", ",", "0.05271311232893705`", ",", 
   "0.016690959707991185`", ",", "0.006980823118596574`", ",", 
   "0.003716920075776008`", ",", "0.0016774404118419471`", ",", 
   "0.0006174041366054145`", ",", "0.00042819148940562754`", ",", 
   "0.00009591084760713535`", ",", "0.000011363687494179257`", ",", 
   "8.112406413103332`*^-6", ",", "7.033815181196702`*^-7"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"largest", " ", "and", " ", "smallest", " ", "entry"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"N", "[", 
    RowBox[{"Max", "[", 
     RowBox[{"Flatten", "[", 
      SubscriptBox["G", "val"], "]"}], "]"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"N", "[", 
    RowBox[{"Min", "[", 
     RowBox[{"Flatten", "[", 
      SubscriptBox["G", "val"], "]"}], "]"}], "]"}], "\[IndentingNewLine]", 
   RowBox[{"N", "[", 
    RowBox[{"Min", "[", 
     RowBox[{"Abs", "[", 
      RowBox[{"Flatten", "[", 
       SubscriptBox["G", "val"], "]"}], "]"}], "]"}], "]"}]}]}]], "Input"],

Cell[BoxData["0.8827782655080324`"], "Output"],

Cell[BoxData[
 RowBox[{"-", "1.0169048425446865`"}]], "Output"],

Cell[BoxData["0.00019392286800133305`"], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "determinant", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   SubscriptBox["detG", "val"], "=", 
   RowBox[{"Det", "[", 
    SubscriptBox["G", "val"], "]"}]}]}]], "Input"],

Cell[BoxData["1.950124552181464712483089344386387566202820054364351365779`30.\
70505955772603*^-39"], "Output"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"save", " ", "as", " ", "reference", " ", "to", " ", "disk"}], " ",
    "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"NotebookDirectory", "[", "]"}], "<>", 
       RowBox[{"FileBaseName", "[", 
        RowBox[{"NotebookFileName", "[", "]"}], "]"}], "<>", 
       "\"\<_G.dat\>\""}], ",", 
      RowBox[{"Flatten", "[", 
       RowBox[{"Transpose", "[", 
        RowBox[{"N", "[", 
         SubscriptBox["G", "val"], "]"}], "]"}], "]"}], ",", 
      "\"\<Real64\>\""}], "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Export", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"NotebookDirectory", "[", "]"}], "<>", 
       RowBox[{"FileBaseName", "[", 
        RowBox[{"NotebookFileName", "[", "]"}], "]"}], "<>", 
       "\"\<_detG.dat\>\""}], ",", 
      RowBox[{"N", "[", 
       SubscriptBox["detG", "val"], "]"}], ",", "\"\<Real64\>\""}], "]"}], 
    ";"}]}]}]], "Input"]
}, Open  ]]
},
WindowSize->{1458, 867},
WindowMargins->{{Automatic, 316}, {Automatic, 98}},
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
Cell[1486, 35, 41, 0, 43, "Subsection"],
Cell[1530, 37, 320, 10, 72, "Input"],
Cell[CellGroupData[{
Cell[1875, 51, 947, 29, 72, "Input"],
Cell[2825, 82, 1469, 50, 52, "Output"],
Cell[4297, 134, 74, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[4408, 141, 295, 8, 52, "Input"],
Cell[4706, 151, 29, 0, 31, "Output"]
}, Open  ]],
Cell[4750, 154, 1075, 30, 52, "Input"],
Cell[CellGroupData[{
Cell[5850, 188, 333, 10, 72, "Input"],
Cell[6186, 200, 28, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[6251, 205, 355, 10, 52, "Input"],
Cell[6609, 217, 28, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[6686, 223, 45, 0, 43, "Subsection"],
Cell[6734, 225, 228, 7, 67, "Input"],
Cell[6965, 234, 236, 7, 67, "Input"],
Cell[7204, 243, 293, 10, 31, "Input"],
Cell[7500, 255, 492, 16, 52, "Input"],
Cell[CellGroupData[{
Cell[8017, 275, 442, 13, 52, "Input"],
Cell[8462, 290, 6539, 187, 140, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[15038, 482, 511, 15, 52, "Input"],
Cell[15552, 499, 789, 18, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[16378, 522, 441, 13, 52, "Input"],
Cell[16822, 537, 49, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[16920, 543, 48, 0, 43, "Subsection"],
Cell[CellGroupData[{
Cell[16993, 547, 823, 26, 90, "Input"],
Cell[17819, 575, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[17931, 582, 567, 15, 92, "Input"],
Cell[18501, 599, 483, 12, 31, "Output"],
Cell[18987, 613, 506, 14, 31, "Output"],
Cell[19496, 629, 502, 13, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20035, 647, 302, 10, 31, "Input"],
Cell[20340, 659, 4100, 54, 152, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[24489, 719, 45, 0, 43, "Subsection"],
Cell[24537, 721, 733, 19, 52, "Input"],
Cell[25273, 742, 124, 4, 31, "Input"],
Cell[CellGroupData[{
Cell[25422, 750, 448, 14, 52, "Input"],
Cell[25873, 766, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[25985, 773, 436, 13, 52, "Input"],
Cell[26424, 788, 1412, 33, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[27873, 826, 392, 10, 72, "Input"],
Cell[28268, 838, 792, 15, 55, "Output"],
Cell[29063, 855, 50, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29150, 860, 729, 19, 92, "Input"],
Cell[29882, 881, 756, 13, 55, "Output"],
Cell[30641, 896, 49, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[30739, 902, 72, 0, 43, "Subsection"],
Cell[30814, 904, 253, 8, 31, "Input"],
Cell[CellGroupData[{
Cell[31092, 916, 436, 13, 52, "Input"],
Cell[31531, 931, 1442, 37, 71, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33010, 973, 123, 3, 31, "Input"],
Cell[33136, 978, 806, 14, 55, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[33979, 997, 651, 18, 92, "Input"],
Cell[34633, 1017, 46, 0, 31, "Output"],
Cell[34682, 1019, 63, 1, 31, "Output"],
Cell[34748, 1022, 50, 0, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34835, 1027, 220, 6, 52, "Input"],
Cell[35058, 1035, 111, 1, 31, "Output"]
}, Open  ]],
Cell[35184, 1039, 1030, 29, 72, "Input"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature GuDZBOze1u3w3AwzUd#cWkee *)