// Exa 1.28
clc;
clear;
close;
// Given data
V1 = 15;// in V
V2 = 0.7;// in V
V3 = 5;// in V
R = 2.2;// in K ohm
I_D = (V1-V2+V3)/R;// in mA
disp(I_D,"The diode current in  mA is");
V_o = (R * I_D) - V3;// in V
disp(V_o,"The output voltage in V");
