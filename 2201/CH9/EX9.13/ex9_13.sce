// Exa 9.13
clc;
clear;
close;
// Given data
V_DD = 6;// in V
V_D = 3;// in V
R_D = 10;// in k ohm
I_DQ = (V_DD-V_D)/R_D;// in mA
disp(I_DQ,"The value of I_DQ in mA is");
V_T = 0.8;// in V
k = 0.12;// in mA/V^2
V_GS = sqrt(I_DQ/k) + V_T;// in V
V_S = -V_GS;// in V
V_DS = V_D-V_S;// in V
disp(V_DS,"The value of V_DS in V is");
