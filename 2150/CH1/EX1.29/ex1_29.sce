// Exa 1.29
clc;
clear;
close;
// Given data
V1 = 16;// in V
V2 = 0.7;// in V
V3 = V2;// in V
V4 = 12;// in V
R = 4.7;// in K ohm
I = (V1-V2-V3-V4)/R;// in mA
disp(I,"The current in mA is");
V_o = (I * 10^-3 * R * 10^3) + V4;// in V
disp(V_o,"The output voltage in V is");
