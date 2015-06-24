// Exa 4.22
clc;
clear;
close;
// Given data
R = 5;// in ohm
I = 50;// in mA
I=I*10^-3;// in A
V = R * I;// in V
Eta = 1;
V_T = 26;// in mV
V_T=V_T*10^-3;// in V
I_o = I/((%e^(V/(Eta * V_T))) - 1);// in A
disp(I_o*10^6,"Reverse saturation current in µA is");
v1 = 0.2;// in V
r = (Eta * V_T)/(I_o * (%e^(v1/(Eta * V_T))));// in ohm
disp(r,"Dynamic resistance of the diode in Ω is");
