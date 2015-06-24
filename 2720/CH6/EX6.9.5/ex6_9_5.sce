//Exa 6.9.5
clc;
clear;
close;
// Given data
I_DSS = 10;// in mA 
I_DSS = I_DSS * 10^-3;// in A
V_P = -(5);// in V
V_GS = -(2.5);// in V
g_m = ((-2 * I_DSS)/V_P) * (1 -(V_GS/V_P));// in S
g_m = g_m * 10^3;// in mS
disp(g_m,"The Transconductance in mS is");
I_D = I_DSS * ((1 - (V_GS/V_P))^2);// in A
disp(I_D*10^3,"The drain current in mA is"); 
