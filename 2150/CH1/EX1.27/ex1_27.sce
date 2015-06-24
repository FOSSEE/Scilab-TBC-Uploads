// Exa 1.27
clc;
clear;
close;
// Given data
V1 = 20;// in V
V2 = 0.7;// in V
R = 4.7*10^3;// in ohm
I = (V1-V2)/R;// in A
I_D = I/2;// in A
disp(I_D*10^3,"The diode current in mA is");
V_o = I_D*R;// in V
disp(V_o,"The output voltage in V is");
