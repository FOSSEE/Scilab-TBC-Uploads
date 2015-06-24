// Exa 8.21
clc;
clear;
close;
// Given data
R_f = 360;// in kohm
R_i = 12;// in kohm
V1 = - 0.3;// in V
V_o = (1+(R_f/R_i))*V1;// in V
disp(V_o,"The output voltage in V is");
V_o1 = 2.4;// in V
V_i = V_o1/(1+(R_f/R_i));// in V
disp(V_i*10^3,"The input voltage in mV is");
