// Exa 4.15
clc;
clear;
close;
// Given data
V_CC = 18;// in V
bita = 90;
R_C = 2.2 * 10^3;// in ohm
R_E = 1.8*10^3;// in ohm
R_B = 510*10^3;// in ohm
I_B = V_CC/( (bita*(R_C+R_E))+R_B );// in A
I_C = bita*I_B;// in A
disp(I_C*10^3,"The value of I_C in mA is");
V_CE = I_B*R_B;// in V
disp(V_CE,"The value of V_CE in V is");
