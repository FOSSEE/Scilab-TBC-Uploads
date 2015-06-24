// Exa 1.2
clc;
clear;
close;
// Given data
V_CC = 50;// in V
V_BE2 = 0.7;// in V
R = 50;// in k ohm
R = 50 * 10^3;// in ohm
I_C1 = 10;// in µA
I_C1 =I_C1 * 10^-6;// in A
V_T = 26;// in mV
V_T = V_T * 10^-3;// in V
I_C2 = (V_CC - V_BE2)/R;// in A
R_E = (V_T*log(I_C2/I_C1))/I_C1;// in ohm
R_E = R_E * 10^-3;// in k ohm
disp(R_E,"The value of R_E in kΩ is");
