// Exa 1.21
clc;
clear;
close;
// Given Data
V_S = 4;// in V
V_D1 = 0.7;// in V
V_D2 = 0.7;// in V
R = 5.1*10^3;// in ohm
I_T = (V_S-V_D1-V_D2)/R;// in A
disp(round(I_T*10^6),"The total current in µA is");
