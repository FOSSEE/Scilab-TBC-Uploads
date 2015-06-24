// Exa 3.30
clc;
clear;
close;
// Given data
C_P = 1.045;// in kJ/kg-K
Q = 100;// in kJ
del_T = Q/C_P;// in degree C
T1 = 25;// in degree C
T1 = T1 + 273;// in K
T = 0;// in degree C
T = T + 273;// in K
T2 = T1 + del_T;// in K
del_Phi = C_P * (log(T2/T1));// in kJ/kg-K
disp(del_Phi,"The change in entropy in the process in kJ/kg-K is");
ini_entropy = C_P * (log(T1/T));// initial entropy in in kJ/kg-K
disp(ini_entropy,"The initial entropyin kJ/kg-K is");
