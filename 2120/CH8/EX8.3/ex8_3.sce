// Exa 8.3
clc;
clear;
close;
// Given data
m = 800;// in kg
C_p = 0.5;// in kJ/kg K
T2 = 500;// in K
T1 = 1250;// in K
T_o = 300;// in K
del_t = T1 - T2;// in K
Q = m * C_p * del_t;// in kJ
dS = abs(m * C_p * log(T2/T1));// in kJ/K
availableEnergy = Q - (T_o * dS);//in kJ
disp(round(availableEnergy*10^-3),"Available energy in MJ is :");
unavailableEnergy = T_o * dS;// UA stands for unavailable energy in kJ
disp(round(unavailableEnergy*10^-3),"Unavailable energy in MJ is :");


