// Exa 3.4
clc;
clear;
close;
format('v',6)
// Given data
V_CC = 12;// in V
R_C = 2.2;// in k ohm
R_C = R_C * 10^3;// in ohm
R_B = 240;//in k ohm
R_B = R_B * 10^3;// in ohm
V_BE = 0.7;// in V
// V_CC - I_B*R_B - V_BE = 0;
I_BQ = (V_CC-V_BE)/R_B;// in A
I_BQ = I_BQ * 10^6;// in µA
disp(I_BQ,"The value of I_BQ in µA is");
Beta = 50;
// I_CQ = Beta*I_BQ + (1+BEta)*I_CO;
I_CQ = Beta*I_BQ*10^-6;// in A
I_CQ = I_CQ * 10^3;// in mA
disp(I_CQ,"The value of I_CQ in mA is");
// V_CC - I_CQ*R_C - V_CEQ = 0;
V_CEQ = V_CC - I_CQ*10^-3*R_C;// in V
disp(V_CEQ,"The value of V_CEQ in V is");
V_B = V_BE;// in V
disp(V_B,"The value of V_B in V is");
V_C = V_CEQ;// in V
disp(V_C,"The value of V_C in V is");
// V_CE = V_CB + V_BE;
V_CB = V_CEQ - V_BE;// in V
V_BC = -V_CB;// in V
disp(V_BC,"The value of V_BC in V is");
