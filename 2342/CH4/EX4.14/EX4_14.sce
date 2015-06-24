// Exa 4.14
format('v',6)
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
// Reverse saturation current,
I_o = I/((%e^(V/(Eta * V_T))) -1);// in A
// Dynamic resistance at 0.1 V forward bias
V = 0.1;// in V
// The diode dynamic resistance,
r_f = (Eta * V_T)/(I_o * ((%e^(V/(Eta * V_T)))-1));// in ohm
disp(r_f,"The diode dynamic resistance in Ω is");

