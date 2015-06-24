// Exa 4.25
clc;
clear;
close;
// Given data
V_CC = 16;// in V
V_BE = 0.7;// in V
R_B = 470;// in kohm
R_B= R_B*10^3;// in ohm
bita = 120;
R_C = 3.6;// in kohm
R_C= R_C*10^3;// in ohm
R_E = 0.51;// in kohm
R_E= R_E*10^3;// in ohm
I_B = (V_CC - V_BE)/(R_B+bita*(R_C+R_E));// in A
disp(I_B*10^6,"The base current in µA is");
I_C  = bita*I_B;// in A
disp(I_C*10^3,"The collector current in mA is");
V_C = V_CC - I_C*R_C;// in V
disp(V_C,"The collector voltage in V is");
