// Exa 1.5
clc;
clear;
close;
// Given data
R_L1 = 1*10^3;// in ohm
R_L2 = 0.23;// in ohm
R_T = R_L1+R_L2;// in ohm
v1 = 10;// in V
v2 = 0.7;// in V
V_T = v1-v2;// in V
I_L = V_T/R_T;// in A
disp(I_L*10^3,"The load current in mA is");
V_L = I_L*R_L1;// in V
disp(V_L,"The load voltage in V is");
