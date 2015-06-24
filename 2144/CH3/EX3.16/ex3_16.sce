// Exa 3.16
clc;
clear;
close;
// Given data
P1 = 1;// in bar
P2 = 15;// in bar
T1 = 0;// in degree C
T1 = T1 + 273;// in K
T2 = 200;// in degree C
T2 = T2 + 273;// in K
C_P = 1.005;// in kJ/kg-K
C_V = 0.718;// in kJ/kg-K
R = C_P-C_V;// in kJ/kg-K
del_U = C_P * (log(T2/T1)) - R*(log(P2/P1));// in kJ/kg-K
disp(del_U,"Change in entropy in kJ/kg-K is"); 
