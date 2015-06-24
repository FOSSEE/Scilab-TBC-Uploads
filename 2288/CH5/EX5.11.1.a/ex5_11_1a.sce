// Exa 5.11.1(a)
clc;
clear;
close;
// Given data
beta_dc = 90;
I_C = 15;// in mA
I_C = I_C * 10^-3;// in A
I_B = I_C/beta_dc;// in A
disp(I_B*10^6,"The base current in µA is");
I_E = I_C + I_B;// in A
I_E = I_E * 10^3;// in mA
disp(I_E,"The Emitter current in mA is");
alpha_dc = beta_dc/(1+beta_dc);
disp(alpha_dc,"The value of alpha_dc is");
