//Chapter-5, Example 5.29, Page 189
//=============================================================================
clc
clear
//CALCULATIONS
R=8;//resistance in ohms
Xc=-(%i)*12;//capacitive reactance in ohms
Y=(inv(R)+inv(Xc));//admittance in mho
disp(Y);
//=================================END OF PROGRAM======================================================================================================
