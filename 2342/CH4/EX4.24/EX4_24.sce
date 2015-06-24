// Exa 4.24
format('v',6)
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
// The reverse saturation current 
I_o = I/((%e^(V/(Eta * V_T))) - 1);// in A
I_o= I_o*10^6;// in µA
disp(I_o,"Reverse saturation current in µA is");
I_o= I_o*10^-6;// in A
v1 = 0.2;// in V
// The dynamic resistance of the diode,
r = (Eta * V_T)/(I_o * (%e^(v1/(Eta * V_T))));// in ohm
disp(r,"Dynamic resistance of the diode in Ω is");
