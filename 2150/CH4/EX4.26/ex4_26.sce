// Exa 4.26
clc;
clear;
close;
// Given data
V_CC = 10;// in V
V_BE = 0.7;// in V
R_B = 250;// in kohm
R_B= R_B*10^3;// in ohm
bita = 90;
R_C = 4.7;// in kohm
R_C= R_C*10^3;// in ohm
R_E = 1.2;// in kohm
R_E= R_E*10^3;// in ohm
I_BQ = (V_CC - V_BE)/(R_B + bita*(R_C+R_E));// in A
disp(I_BQ*10^6,"The base current at Q-point in µA is");
I_CQ = bita*I_BQ;// in A
disp(I_CQ*10^3,"The collector current at Q-point in mA is");
V_CEQ = V_CC - (I_CQ*(R_C+R_E));// in V
disp(V_CEQ,"Collector emitter voltage at Q point in V is");
