// Exa 5.9.1
clc;
clear;
close;
// Given data
V_EE = 8;// in V
V_BE = 0.7;// in V
R_E = 1.5;// in k ohm
I_E = (V_EE - V_BE)/R_E;// in mA
I_C = I_E;// in mA
disp(I_C,"The value of I_C in mA is");
V_CC = 18;// in V
R_C = 1.2;// in kΩ
V_CB = V_CC - (I_C * R_C);// in V
disp(V_CB,"The value of V_CB in V is");
