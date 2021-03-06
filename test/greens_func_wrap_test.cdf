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
NotebookDataLength[     18009,        634]
NotebookOptionsPosition[     16913,        573]
NotebookOutlinePosition[     17256,        588]
CellTagsIndexPosition[     17213,        585]
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
    RowBox[{"-", 
     FractionBox["1", "5"]}]}], ";"}]}]], "Input"],

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

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   SubscriptBox["exp\[Tau]k", "val"], "=", 
   RowBox[{"MatrixExp", "[", 
    RowBox[{
     RowBox[{"-", 
      SubscriptBox["\[Tau]", "val"]}], 
     SubscriptBox["k", "val"]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", "%", "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "24"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{
   SubscriptBox["invexp\[Tau]k", "val"], "=", 
   RowBox[{"MatrixExp", "[", 
    RowBox[{
     SubscriptBox["\[Tau]", "val"], 
     SubscriptBox["k", "val"]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Dimensions", "[", "%", "]"}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"24", ",", "24"}], "}"}]], "Output"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "check", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"Norm", "[", 
   RowBox[{
    RowBox[{"FullSimplify", "[", 
     RowBox[{
      SubscriptBox["exp\[Tau]k", "val"], ".", 
      SubscriptBox["invexp\[Tau]k", "val"]}], "]"}], "-", 
    RowBox[{"IdentityMatrix", "[", 
     SubscriptBox["n", "sites"], "]"}]}], "]"}]}]], "Input"],

Cell[BoxData["0"], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Hubbard-Stratonovich field", "Subsection"],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"SeedRandom", "[", "42", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  SubscriptBox["s", "val"], "=", 
  RowBox[{
   RowBox[{"2", 
    RowBox[{"RandomInteger", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"0", ",", "1"}], "}"}], ",", 
      RowBox[{
       SubscriptBox["n", "x"], 
       SubscriptBox["n", "y"]}]}], "]"}]}], "-", "1"}]}]}], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", "1", ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", "1", ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}], ",", 
   RowBox[{"-", "1"}]}], "}"}]], "Output"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Green\[CloseCurlyQuote]s function matrix", "Subsection"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   SubscriptBox["\[Lambda]", "val"], "=", 
   RowBox[{"3", "/", "4"}]}], ";"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"initial", " ", 
    RowBox[{"Green", "'"}], "s", " ", "function", " ", "matrix"}], " ", 
   "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    RowBox[{"SeedRandom", "[", "42", "]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     SubscriptBox["G", "0"], "=", 
     RowBox[{"Table", "[", 
      RowBox[{
       RowBox[{
        FractionBox["1", "12"], 
        RowBox[{"RandomInteger", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "12"}], ",", "12"}], "}"}], "]"}]}], ",", 
       RowBox[{"{", 
        RowBox[{"i", ",", 
         SubscriptBox["n", "sites"]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{"j", ",", 
         SubscriptBox["n", "sites"]}], "}"}]}], "]"}]}], ";"}]}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["G", "0"], "\[LeftDoubleBracket]", 
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
      FractionBox["1", "12"], 
      FractionBox["2", "3"], 
      RowBox[{"-", 
       FractionBox["2", "3"]}]},
     {
      FractionBox["1", "6"], 
      FractionBox["11", "12"], 
      RowBox[{"-", 
       FractionBox["3", "4"]}]},
     {
      FractionBox["1", "6"], 
      RowBox[{"-", 
       FractionBox["1", "3"]}], 
      FractionBox["1", "3"]}
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

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"apply", " ", "Eq", " ", 
    RowBox[{"(", "16", ")"}], " ", "to", " ", "transform", " ", "to", " ", 
    "next", " ", "time", " ", "slice"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["G", "1"], "=", 
    RowBox[{
     RowBox[{"SparseArray", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{"i_", ",", "i_"}], "}"}], "\[RuleDelayed]", 
        RowBox[{"Exp", "[", 
         RowBox[{
          RowBox[{"-", 
           SubscriptBox["\[Lambda]", "val"]}], 
          RowBox[{
           SubscriptBox["s", "val"], "\[LeftDoubleBracket]", "i", 
           "\[RightDoubleBracket]"}]}], "]"}]}], ",", 
       RowBox[{
        SubscriptBox["n", "sites"], 
        RowBox[{"{", 
         RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}], ".", 
     RowBox[{"N", "[", 
      RowBox[{
       SubscriptBox["exp\[Tau]k", "val"], ",", 
       RowBox[{"2", "MachinePrecision"}]}], "]"}], ".", 
     SubscriptBox["G", "0"], ".", 
     RowBox[{"N", "[", 
      RowBox[{
       SubscriptBox["invexp\[Tau]k", "val"], ",", 
       RowBox[{"2", "MachinePrecision"}]}], "]"}], ".", 
     RowBox[{"SparseArray", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"{", 
         RowBox[{"i_", ",", "i_"}], "}"}], "\[RuleDelayed]", 
        RowBox[{"Exp", "[", 
         RowBox[{
          SubscriptBox["\[Lambda]", "val"], " ", 
          RowBox[{
           SubscriptBox["s", "val"], "\[LeftDoubleBracket]", "i", 
           "\[RightDoubleBracket]"}]}], "]"}]}], ",", 
       RowBox[{
        SubscriptBox["n", "sites"], 
        RowBox[{"{", 
         RowBox[{"1", ",", "1"}], "}"}]}]}], "]"}]}]}], ";"}]}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", "example", " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{
    SubscriptBox["G", "1"], "\[LeftDoubleBracket]", 
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
     {"0.5047377604945497197911414076357475665631043856146348428264`31.\
370746338245173", 
      "3.971090828964884356369359529891218570378182719181157812061`31.\
454529343888716", 
      RowBox[{
      "-", "0.4426966357972388723378066548003973577323801126830889805257`31.\
0950450324504"}]},
     {"0.0629857149244606252888631958068381463059495142202318170259`31.\
153385410352268", 
      "0.9662242582079457154234898517183778272597290022542564715256`31.\
391292841428637", 
      RowBox[{
      "-", "0.1523276377182916812804001545535595410660691877478366628958`31.\
336973941310603"}]},
     {"0.277476036522906624685084123627307766758556353330144159875`31.\
173347050674444", 
      RowBox[{
      "-", "0.0264757773044586926123936455191384063828445152982898331567`29.\
5109345247412"}], 
      "0.3529285356334093132552390082148711833645940715153761434809`31.\
235830359661232"}
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

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{"save", " ", "initial", " ", "and", " ", "updated", " ", 
    RowBox[{"Green", "'"}], "s", " ", "function", " ", "to", " ", "disk"}], 
   " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"Export", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"NotebookDirectory", "[", "]"}], "<>", 
        RowBox[{"FileBaseName", "[", 
         RowBox[{"NotebookFileName", "[", "]"}], "]"}], "<>", "\"\<_G\>\"", "<>", 
        RowBox[{"ToString", "[", "i", "]"}], "<>", "\"\<.dat\>\""}], ",", 
       RowBox[{"N", "[", 
        RowBox[{"Flatten", "[", 
         RowBox[{"Transpose", "[", 
          RowBox[{"N", "[", 
           SubscriptBox["G", "i"], "]"}], "]"}], "]"}], "]"}], ",", 
       "\"\<Real64\>\""}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "0", ",", "1"}], "}"}]}], "]"}], ";"}]}]], "Input"]
}, Open  ]]
},
WindowSize->{1600, 778},
WindowMargins->{{Automatic, 66}, {115, Automatic}},
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
Cell[2825, 82, 1469, 50, 31, "Output"],
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
Cell[6965, 234, 257, 8, 67, "Input"],
Cell[7225, 244, 293, 10, 31, "Input"],
Cell[CellGroupData[{
Cell[7543, 258, 305, 9, 52, "Input"],
Cell[7851, 269, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[7963, 276, 286, 8, 52, "Input"],
Cell[8252, 286, 75, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[8364, 293, 377, 10, 52, "Input"],
Cell[8744, 305, 28, 0, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[8821, 311, 48, 0, 43, "Subsection"],
Cell[CellGroupData[{
Cell[8894, 315, 399, 13, 52, "Input"],
Cell[9296, 330, 616, 19, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[9961, 355, 62, 0, 43, "Subsection"],
Cell[10026, 357, 124, 4, 31, "Input"],
Cell[10153, 363, 805, 25, 87, "Input"],
Cell[CellGroupData[{
Cell[10983, 392, 434, 13, 52, "Input"],
Cell[11420, 407, 914, 30, 101, "Output"]
}, Open  ]],
Cell[12349, 440, 1711, 49, 52, "Input"],
Cell[CellGroupData[{
Cell[14085, 493, 434, 13, 52, "Input"],
Cell[14522, 508, 1439, 36, 71, "Output"]
}, Open  ]],
Cell[15976, 547, 921, 23, 52, "Input"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 1vT8uTfq57OpEB1q8jIl8zDf *)
