// Exa 1.19
clc;
clear;
close;
// Given data
V_S = 6;// in V
V_D = 0.7;// in V
R = 10;// in K ohm
R = R*10^3;// in ohm
I_T = (V_S-V_D)/R;// in A
disp(I_T*10^6,"The total current in µA is");
