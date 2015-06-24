// Exa 8.10
clc;
clear;
close;
// Given data
R_F = 3;// in kohm
R1 = 1;// in  kohm
V1 = 2;// in V
V2 = 3;// in V
V_o1 = (1+(R_F/R1))*V1;// in V
V_o2 = (1+(R_F/R1))*V2;// in V
V_o = V_o1+V_o2;// in V
disp(V_o,"The output voltage in V is");
