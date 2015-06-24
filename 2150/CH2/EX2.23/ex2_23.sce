// Exa 2.23
clc;
clear;
close;
// Given data
V_s = 12;// in V
R_L = 5.1;// in k ohm
R_L = R_L * 10^3;// in ohm
R_s = 1;// in K ohm
R_s = R_s * 10^3;// in ohm
V_L = (V_s*R_L)/(R_s+R_L);// in V
disp(V_L,"Peak load voltage in V is");
