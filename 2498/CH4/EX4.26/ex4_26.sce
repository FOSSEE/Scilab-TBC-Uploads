// Exa 4.26
format('v',5)
clc;
clear;
close;
// Given data
V_CEsat = 0.1;// in V
V_BEsat = 0.6;// in V
h_fc = 50;
Beta = h_fc;
V_CC = 12;// in V
R_C = 1;// in k ohm
R_C = R_C * 10^3;// in ohm
R_B = 10;// in k ohm
R_B = R_B * 10^3;// in ohm
// The collector current,
I_C = (V_CC-V_CEsat)/R_C;// in A
I_B = I_C/Beta;// in mA
// The value of V_BB to saturate the transistor 
V_BB = (I_B*R_B) + V_BEsat;// in V
disp(V_BB,"The value of V_BB to saturate the transistor in V is");
