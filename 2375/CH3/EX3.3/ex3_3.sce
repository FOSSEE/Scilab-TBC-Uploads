// Exa 3.3
clc;
clear;
close;
format('v',6)
// Given data
Beta = 100;
V_CC = 10;// in V
V_BE = 0.7;// in V
R_B = 150;// in k ohm
// V_CC - I_B*R_B - V_BE = 0;
I_B = (V_CC-V_BE)/R_B;// in mA
// I_C = Beta*I_B + (1+Beta)*I_CO;
I_C = Beta * I_B;// in A
// V_CC - I_C*R_C - V_CE = 0;
R_C = 1;// in k ohm
V_CE = V_CC - (I_C*R_C);// in V
disp("The operating point is : "+string(V_CE)+" V, "+string(I_C)+" mA")
