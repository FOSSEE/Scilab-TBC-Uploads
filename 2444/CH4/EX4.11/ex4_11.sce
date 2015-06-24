// Exa 4.11
clc;
clear;
close;
format('v',5)
// Given data
V_CC = 8;// in V
I_CR_C = 0.5;// in V
R_C = 800;// in ohm
V_CE = V_CC - I_CR_C;// in V
disp(V_CE,"The collector emitter voltage in V is");
I_C = I_CR_C/R_C;// in A
Alpha = 0.96;// unit less
Beta = Alpha/(1-Alpha);
I_B = I_C/Beta;// in A
I_B = I_B * 10^6;// in µA
disp(I_B,"The Base current in µA is");
