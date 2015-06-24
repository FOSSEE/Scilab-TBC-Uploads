// Exa 3.36
clc;
clear;
close;
format('v',5)
// Given data
R_B = 100;// in k ohm
R_B = R_B * 10^3;// in ohm
R_C = 1;// in k ohm
R_C = R_C * 10^3;// in ohm
V_BE = 0.3;// in V
// S = 1 + Beta and Beta = I_C/I_B;
V_CC = 12;// in V
V_CE = 6;// in V
I_C = (V_CC-V_CE)/R_C;// in A
I_C = I_C * 10^3;// in mA
I_B = (V_CC-V_BE)/R_B;// in A
I_B = I_B * 10^6;// in µA
Beta = (I_C*10^-3)/(I_B*10^-6);
S = 1 + Beta;
disp(S,"The stability factor is");

