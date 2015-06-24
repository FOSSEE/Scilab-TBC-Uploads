//Exa 8.2
clc;
clear;
close;
// Given data
Q = 12000;// in kJ
T_H = 600;// in K
T_L = 300;// in K
dS = Q / T_H;//in kJ/K
A = Q - (T_L * dS);//available work in kJ
disp(A,"Available work is in kJ");
UA = T_L * dS;//unavailable work in kJ
disp(UA,"Anavailable work is in kJ");
