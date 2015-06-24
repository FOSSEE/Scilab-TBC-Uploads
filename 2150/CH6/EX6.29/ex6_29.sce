// Exa 6.29
clc;
clear;
close;
// Given data
V_SS = 25;// in V
V_GS = 0;// in V
R_S = 18;// in kohm
R_S = R_S * 10^3;// in ohm
I_D = (V_SS-V_GS)/R_S;// in A
disp(I_D*10^3,"The drain current in mA is");
V_DD = 25;// in V
R_D = 7.5;// in kohm
R_D = R_D * 10^3;// in ohm
V_D = V_DD - (I_D*R_D);// in V
disp(V_D,"The drain voltage in V is");
