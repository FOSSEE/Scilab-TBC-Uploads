// Exa 4.7
clc;
clear;
close;
format('v',6)
// Given data
Alpha = 0.98;
I_CO = 5;// in µA
I_CO = I_CO * 10^-3;// in mA
I_B = 100;// in µA
I_B = I_B * 10^-3;// in mA
Beta = Alpha/(1-Alpha);
// The collector current 
I_C = Beta*I_B + (1+Beta)*I_CO;// in mA
disp(I_C,"The collector current in mA is");
// The emitter current 
I_E = I_C+I_B;// in mA
disp(I_E,"The emitter current in mA is");
