// Exa 3.17
clc;
clear;
close;
// Given data
C_V = 2.174;// in kJ/kg-K
R = 0.5196;// in kJ/kg-K
C_P = C_V+R;// in kJ/kg-K
V2 = 1;// in m^3
V1 = 8;// in m^3
P1 = 0.7;// in bar
P2 = 7;// in bar
del_U = C_P * (log(V2/V1)) + C_V * (log(P2/P1));// in kJ/kg-K
m = 0.9;// in kg
del_U = m * del_U;// in kJ/K
disp(del_U,"Change in entropy in kJ/K is");
disp("It is a loss of entropy")
