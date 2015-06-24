// Exa Misc. 6.25
clc;
clear;
close;
format('v',6)
// Given data
//Ratio of R2/R1 =  R3/R4 = 4 and R_L = -Vi/R3
Vi = 3.7;// in V
R3 = 2;// in k ohm
R3 = R3 * 10^3;// in ohm
// The current through R_L,
I_L = -Vi/R3;// in A
I_L= I_L*10^3;// in mA
disp(I_L,"The current through R_L in mA is");
