// Exa 6.6
clc;
clear;
close;
// Given data
V_GS = -2;// in V
V_P = -5;// in V
V_DS = V_GS-V_P;// in V
I_DSS = 8;// in mA
I_DS = I_DSS*( 1-(V_GS/V_P) )^2;// in mA
disp(I_DS,"The drain current in mA is");
