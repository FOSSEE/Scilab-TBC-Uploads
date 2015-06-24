// Exa 1.36
clc;
clear;
close;
format('v',6)
// Given data
V_T = 0.026;// in V
Eta = 1;
I = '-0.9*Io';
// T = Io*((%e^(V/(Eta*V_T)))-1 );
// I = Io*((%e^(V/(Eta*V_T)))-1 );
V = log(0.1)*V_T;// in V 
V = V * 10^3;// in mV
disp(V,"The voltage in mV is");
