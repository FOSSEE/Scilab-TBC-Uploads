// Exa 8.2
clc;
clear;
close;
// Given data
R_f = 200;// in kohm 
R1 = 2;// in kohm
A_V = - (R_f/R1);
V_in = 2.5;// in mV
V_in= V_in*10^-3;// in V
V_o = (A_V * V_in);// in V
disp(V_o,"The output voltage in V is");
