// Exa 8.3
clc;
clear;
close;
// Given data
V1 = 2;// in V
R_f = 500;// in kohm
R_f = R_f*10^3;// in ohm
R1 = 100;// in kohm
R1 = R1 * 10^3;// in ohm
V_o = (1+(R_f/R1))*V1;// in V
disp(V_o,"The output voltage in V is");
