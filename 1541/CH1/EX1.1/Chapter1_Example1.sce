//Chapter-1, Example 1.1, Page 1.14
//=============================================================================
clc
clear

//INPUT DATA
I=450;//Load current in A
V=250;//Terminal voltage in V
Ra=0.04;//Armature resistance in ohm
Rf=50;//Shunt field resistance in ohm

//CALCULATIONS
Ia=(V/Rf)+I;//Total current in A
Eg=(V+(Ia*Ra));//Generated emf in V

//OUTPUT
mprintf('Generated emf is %3.1f V',Eg)

//=================================END OF PROGRAM==============================
