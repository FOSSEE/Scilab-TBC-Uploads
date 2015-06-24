// Exa 4.35
clc;
clear;
close;
// Given data
V_BB = 10;// in V
V_BE = 0.7;// in V
R_B = 1;// in kohm
R_B = 1 * 10^6;// in ohm
I_B = (V_BB-V_BE)/R_B;// in A
disp(I_B*10^6,"The base current in µA is");
beta_dc = 200;
I_C = beta_dc * I_B;// in A
disp(I_C*10^3,"The collector current in mA is");
V_CC = 20;// in V
R_C = 3.3;// in kohm
R_C = R_C * 10^3;// in ohm
V_CE = V_CC - I_C*R_C;// in V
disp(V_CE,"The collector voltage in V is");
