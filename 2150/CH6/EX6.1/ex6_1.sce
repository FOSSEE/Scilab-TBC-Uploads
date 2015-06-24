// Exa 6.1
clc;
clear;
close;
// Given data
V_D = 10;// in V
R = 10*10^3;// in ohm
I_D = V_D/R;// in A
V_P = 4;// in V
I_DSS = 10;// in mA
I_DSS = I_DSS * 10^-3;// in A
R_DS  = V_P/I_DSS;// in ohm
V_D = (R_DS/(R+R_DS))*V_D;// in V
disp(V_D,"The drain voltage in V is");
