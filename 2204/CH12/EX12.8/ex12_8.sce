// Exa 12.8
clc;
clear;
close;
// Given data
V_i = 4.095;//input voltage in V
n = 12;
Q_E = V_i/( ((2^n)-1)*2 );// in V
Q_E = Q_E * 10^3;// in mV
disp(Q_E,"The quantizing error in mV is");
