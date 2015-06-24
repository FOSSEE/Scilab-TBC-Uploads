// Exa 4.18
clc;
clear;
close;
// Given data
V_BE = 0.7;// in V
I_B = 40 * 10^-6;// in A
V_CC = 20;// in V (From the load line)
disp(V_CC,"The voltage in V is");
I_C = 8;// in mA
R_C = V_CC/I_C;// in kohm
disp(R_C,"The resistance in kohm is");
R_B = (V_CC - V_BE)/I_B;// in ohm
disp(R_B*10^-3,"The resistance in kohm is");
