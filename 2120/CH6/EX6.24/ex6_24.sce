//Exa 6.24
clc;
clear;
close;
// Given data
Q2 = 1.75;// in kJ/sec
T1 = -15;// in °C
T1 = T1 + 273;// in K
T2 = 30;// in °C
T2 = T2 + 273;// in K
del_T = T2 - T1;// in K
// Q2/W_net = T2/(del_T)
W_net = Q2 * del_T/T1;// in kW
disp(W_net,"Least power required in kW is");
