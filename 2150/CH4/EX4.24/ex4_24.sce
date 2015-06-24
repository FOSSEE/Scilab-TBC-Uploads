// Exa 4.24
clc;
clear;
close;
// Given data
V_CC = 20;// in V
V_BE = 0.7;// in V
R_B = 680;// in kohm
R_B = R_B * 10^3;// in ohm
R_C = 4.7;// in kohm
R_C = R_C * 10^3;// in ohm
bita = 120;
I_B = (V_CC - V_BE)/(R_B+bita*R_C);// in A
I_CQ = bita*I_B;// in A
disp(I_CQ*10^3,"The value of I_CQ in mA is");
V_CEQ = V_CC - (I_CQ*R_C);// in V
disp(V_CEQ,"The value of V_CEQ in V is");
V_B = V_BE;// in V
V_C = 11.26;// in V
V_E = 0;// in V
disp(V_E,"The value of V_E in V is");
V_BC = V_B - V_C;// in V
disp(V_BC,"The value of V_BC in V is");
