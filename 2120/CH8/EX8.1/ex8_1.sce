//Exa 8.1
clc;
clear;
close;
// Given data
Q = 16;// in MJ
Q = Q * 10^3;// in kJ
T_H = 227;// in °C
T_H = T_H + 273;// in K
T_L = 15;// in °C
T_L = T_L + 273;// in K
del_S = Q/T_H;// in kJ/K
A = Q - (T_L * del_S);// in kJ
disp(A,"The available part of heat in kJ is "); 
U_P_ofHeat = T_L * del_S;// unavailable part of heat in kJ
disp(U_P_ofHeat,"The unavailable part of heat in kJ is :");
