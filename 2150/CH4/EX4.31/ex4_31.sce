// Exa 4.31
clc;
clear;
close;
// Given data
V_BE = 0.7;// in V
V_BB = 10;// in V
R_B = 470;// in kohm
R_B = R_B * 10^3;// in ohm
I_B = (V_BB-V_BE)/R_B;// in A
disp(I_B*10^6,"The base current in µA is");
