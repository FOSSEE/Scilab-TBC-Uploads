// Exa 7.18
clc;
clear;
close;
format('v',5)
// Given data
I_DSS = 5.6;// in mA
V_P = -4;// in V
g_m = 2;// in mA/V
R_S = 10;// in k ohm
A_V = (g_m*R_S)/(1+(g_m*R_S));
Vi = 10;// in V
// Change in output voltage,
delVo = A_V*Vi;// in V
disp(delVo,"The changes in Vo in V is");
