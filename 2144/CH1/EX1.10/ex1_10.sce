// Exa 1.10
clc;
clear;
close;
// Given data
m = 18.2;//quantity of air supplied of coal in kg
T1 = 200;// in degree C
T2 = 18;// in degree C
del_T = T1-T2;// in degree C
Spe_heat = 1;// in kJ/kg-K
Q_C = m*Spe_heat*del_T;// in kJ
disp(Q_C,"The Quantity of heat supplied per kg of coal in kJ is");
