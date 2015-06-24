// Exa 4.3
clc;
clear;
close;
format('v',8)
// Given data
Alpha = 0.988;// unit less
I_E = 1.2;// in mA
I_E = I_E * 10^-3;// in A
I_CO = 0;// in A
I_C = Alpha*I_E + I_CO;// in A
I_B = I_E - I_C;// in A
I_B = I_B * 10^6;// in µA
disp(I_B,"The base current in µA is");
