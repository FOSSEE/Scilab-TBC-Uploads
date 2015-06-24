// Exa 4.21
format('v',7)
clc;
clear;
close;
// Given data
beta_dc = 90;
// The base current,
I_C = 15;// in mA
I_C = I_C * 10^-3;// in A
I_B = I_C/beta_dc;// in A
I_B=I_B*10^6;// in µA
disp(I_B,"The base current in µA is");
I_B=I_B*10^-6;// in A
// The emitter current,
I_E = I_C + I_B;// in A
I_E = I_E * 10^3;// in mA
disp(I_E,"The Emitter current in mA is");
alpha_dc = beta_dc/(1+beta_dc);
disp(alpha_dc,"The value of alpha_dc is");

// Note: There is printing mistake in the book in this example.
