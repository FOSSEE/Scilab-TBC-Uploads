// Exa 4.8
clc;
clear;
close;
format('v',6)
// Given data
I_E = 2;// in mA
I_C = 1.97;// in mA
I_B = I_E-I_C;// in mA
disp(I_B,"The base current in mA is");
I_CO = 12.5;// in µA
I_CO = I_CO * 10^-3;// in mA
Alpha = (I_C-I_CO)/I_E;// unit less
disp(Alpha,"The current gain is");
