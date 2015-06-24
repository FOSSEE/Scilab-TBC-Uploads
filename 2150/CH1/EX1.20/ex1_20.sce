// Exa 1.20
clc;
clear;
close;
// Given data
V_S = 5;// in V
V_D = 0.7;// in V
R1 = 1.2 * 10^3;// in ohm
R2 = 2.2 * 10^3;// in ohm
I_T = (V_S-V_D)/(R1+R2);
I_T = I_T * 10^3;// in mA
disp(I_T,"The total circuit current in mA is");
