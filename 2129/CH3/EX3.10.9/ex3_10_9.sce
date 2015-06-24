// Exa 3.10.9
clc;
clear;
close;
// Given data
I_o = 1.8 * 10^-9;// A
v = 0.6;// in V
Eta = 2;
V_T = 26;// in mV
V_T=V_T*10^-3;// in V
I = I_o *(%e^(v/(Eta * V_T)));// in A
disp(I*10^3,"The current in the junction in mA is");
