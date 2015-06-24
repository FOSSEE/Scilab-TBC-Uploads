// Exa 4.37
clc;
clear;
close;
// Given data
V_BB = 2.5;// in V
V_BE = 0.7;// in V
V_E = V_BB-V_BE;// in V
disp(V_E,"The emitter voltage in V is");
R_E = 1.8;// in kohm
R_E = R_E * 10^3;// in ohm
I_E = V_E/R_E;// in A
I_C= I_E;// in A
V_CC = 20;// in V
R_C = 10;// in kohm
R_C = R_C * 10^3;// in ohm
V_C = V_CC-(I_C*R_C);// in V
disp(V_C,"The collector voltage in V is");
