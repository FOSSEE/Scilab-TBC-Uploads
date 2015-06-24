// Exa 6.27
clc;
clear;
close;
// Given data
V_DD = 15;// in V
R_D = 10;// in kohm
R_D = R_D * 10^3;// in ohm
I_D = V_DD/R_D;// in A
disp(I_D*10^3,"The drain current in mA is");
V_D = V_DD - I_D*R_D;// in V
disp(V_D,"The drain voltage in V is");
