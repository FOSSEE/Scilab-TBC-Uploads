// Exa 4.1
clc;
clear;
close;
format('v',6)
// Given data
Alpha = 0.98;
Vo = 4.9;// in V
R_L = 5;// in k ohm
R_L = R_L * 10^3;// in ohm
I_C = Vo/R_L;// in A
I_C = I_C * 10^3;// in mA
// Alpha = I_C/I_E;
I_E = I_C/Alpha;// in mA
// The base current 
I_B = I_E-I_C;// in mA
disp(I_B,"The base current in mA is");
