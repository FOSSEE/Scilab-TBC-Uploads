// Exa 4.12
format('v',7)
clc;
clear;
close;
// Given data
I_o = 2.4 * 10^-14;
I = 1.5;// in mA
I=I*10^-3;// in A
Eta = 1;
V_T = 26;// in mV
V_T= V_T*10^-3;// in V
// The forward biasing voltage across the junction
v =log((I + I_o)/I_o) * V_T;// in V
disp(v,"The forward biasing voltage across the junction in V is");
