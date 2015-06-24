// Exa 6.7
clc;
clear;
close;
// Given data
I_DSS = 8.4;// in mA
I_DSS= I_DSS*10^-3;// in A
V_P = -3;// in V
V_GS = -1.5;// in V
I_D = I_DSS*( 1-(V_GS/V_P) )^2;// in A
disp(I_D*10^3,"The drain current in mA is");
V_GS1 = 0;// in V
g_mo = -( (2*I_DSS)/V_P );// in A/V
g_m = g_mo*(1-(V_GS/V_P));// in A/V
disp(g_m*10^3,"Transconductacne at V_G=-1.5 V,  in mA/V is");
