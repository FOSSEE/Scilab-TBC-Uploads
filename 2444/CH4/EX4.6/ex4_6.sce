// Exa 4.6
clc;
clear;
close;
format('v',5)
// Given data
R_L = 4;// in k ohm
R_L = R_L * 10^3;// in ohm
V_across_RL = 3;// in V
I_C = V_across_RL/R_L;// in A
I_C = I_C * 10^3;// in mA
Alpha = 0.96;// unit less
I_E = I_C/Alpha;// in mA
I_B = I_E - I_C;// in mA
disp(I_B,"The base current in mA is");
