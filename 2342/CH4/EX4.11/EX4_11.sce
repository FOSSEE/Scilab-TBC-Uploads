// Exa 4.11
format('v',6)
clc;
clear;
close;
// Given data
I_o = 1.8 * 10^-9;// A
v = 0.6;// in V
Eta = 2;
V_T = 26;// in mV
V_T=V_T*10^-3;// in V
// The current in the junction
I = I_o *(%e^(v/(Eta * V_T)));// in A
I= I*10^3;// in mA
disp(I,"The current in the junction in mA is");
