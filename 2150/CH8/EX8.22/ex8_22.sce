// Exa 8.22
clc;
clear;
close;
// Given data
R_f = -68;// in kohm
R1 = 33;// in kohm
R2 = 22;// in kohm
R3 = 12;// in kohm
V1 = 0.2;// in V
V2 = - 0.5;// in V
V3 = 0.8;// in V
V_o = ((R_f/R1)*V1) + ((R_f/R2)*V2) + ((R_f/R3)*V3);// in V
disp(V_o,"The output voltage in V is");
