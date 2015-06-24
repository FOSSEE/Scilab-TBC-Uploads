// Exa 4.7
clc;
clear;
close;
format('v',8)
// Given data
I_E = 3;// in mA
I_CO = 10;// in µA
I_CO = I_CO * 10^-3;// in mA
Alpha = 0.98;// unit less
I_C = (Alpha*I_E) + I_CO;// in mA
disp(I_C,"The collector current in mA is");
I_B = I_E - I_C;// in mA
disp(I_B,"The base current in mA is");
