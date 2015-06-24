// Exa 8.16
clc;
clear;
close;
// Given data
I_DSS = 10;// in mA
V_P = -5;// in V
V_GS = -2.5;// in V
g_m = ((-2*I_DSS)/V_P)*(1-(V_GS/V_P));// in mS .... correction
disp(g_m,"The transconductance in mS is");
I_D = I_DSS * ((1-(V_GS/V_P))^2);// in mA
disp(I_D,"The drain current in mA is");
