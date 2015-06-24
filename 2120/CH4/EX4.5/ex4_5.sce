// Exa 4.5
clc;
clear;
close;
// Given data
m = 1.5;// in kg
T1 = 90;// in °C
T1 = T1 + 273;//in K
T2 = 225;// in °C
T2 = T2 + 273;// in K
C_p = 0.24;
C_v = 0.17;
Q = (m * C_p * (T2-T1));// in kcal
del_U = (m * C_v * (T2-T1));// in kcal
W = Q - del_U;// in kcal
disp(W,"The external work done in kcal is");
