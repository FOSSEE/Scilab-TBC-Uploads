//Chapter-5, Example 5.30, Page 189
//=============================================================================
clc
clear
//CALCULATIONS
R=3;//resistance in ohms
Xl=(%i)*4;//inductive reactance in ohms
Y=(inv(R)+inv(Xl));//admittance in mho
disp(Y);
//=================================END OF PROGRAM======================================================================================================
