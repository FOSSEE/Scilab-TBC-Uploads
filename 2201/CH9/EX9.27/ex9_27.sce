// Exa 9.27
clc;
clear;
close;
// Given data
R_D = 7.5;// in k ohm
V_T = -0.8;// in V
k = 0.2;// in mA/V^2
R2 = 50;// in ohm
R1 = 50;// in  ohm
V_DD = 5;// in V
V_S = 5;// in V
V_G = (R2/(R2+R1))*V_DD;// in V
V_GS = V_G - V_S;// in V
I_D = k*((V_GS-V_T)^2);// in mA
disp(I_D,"Drain current in mA is");
V_SD = V_DD - (I_D*R_D);// in V
disp(V_SD,"Source to drain voltage in V is");
