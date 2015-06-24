// Exa 3.25
clc;
clear;
close;
// Given data
P1 = 14;// in bar
P3 = 2.222;// in bar
V3byV1 = P1/P3;
P2 = 1.05;// in bar
Gamma = log(P1/P2)/log(V3byV1);
C_P = 1.005;// in kJ/kg-K
C_V = C_P/Gamma;// in kJ/kg-K
T3 = 343;// in degree C
T3 = T3 + 273;// in K
T2 = ceil(T3*P2)/P3;// in K
m = 0.5;// in kg 
del_U = m*C_V*(T2-T3);// in kJ
disp(del_U,"Change in internal energy in kJ is");
disp("i.e. there is a loss of "+string(abs(del_U))+" kJ of internal energy")
