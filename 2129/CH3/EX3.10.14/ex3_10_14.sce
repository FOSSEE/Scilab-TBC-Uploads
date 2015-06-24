// Exa 3.10.14
clc;
clear;
close;
// Given data
V = 0.25;// in V
I_o = 1.2;// in µA
I_o = I_o * 10^-6;// in A
V_T = 26;// in mV
V_T = V_T * 10^-3;// in V
Eta = 1;
r = (Eta * V_T)/(I_o * (%e^(V/(Eta * V_T))));// in ohm
disp(r,"The ac resistance of the diode in ohm is");
