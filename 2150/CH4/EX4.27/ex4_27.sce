// Exa 4.27
clc;
clear;
close;
// Given data
V_CC = 12;// in V
V_BE = 0.7;// in V
R_B = 150;// in kohm
R_B= R_B*10^3;// in ohm
bita = 180;
R_C = 4.7;// in kohm
R_C= R_C*10^3;// in ohm
R_E = 3.3;// in kohm
R_E= R_E*10^3;// in ohm
I_B = (V_CC-V_BE)/(R_B + bita*(R_C+R_E));// in A
disp(I_B*10^6,"The base current in µA is");
