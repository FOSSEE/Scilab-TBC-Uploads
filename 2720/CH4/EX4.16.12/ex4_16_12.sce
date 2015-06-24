// Exa 4.16.12
clc;
clear;
close;
// Given data
R = 4.5;// in ohm
I = 44.4;// in mA
I=I*10^-3;// in A
V = R * I;// in V
Eta = 1;
V_T = 26;//in mV
V_T=V_T*10^-3;// in V
I_o = I/((%e^(V/(Eta * V_T))) -1);// in A
// At
V = 0.1;// in V
r_f = (Eta * V_T)/(I_o * ((%e^(V/(Eta * V_T)))-1));// in ohm
disp(r_f,"The diode dynamic resistance in Ω is");

