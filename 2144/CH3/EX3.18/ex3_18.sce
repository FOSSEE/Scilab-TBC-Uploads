// Exa 3.18
clc;
clear;
close;
// Given data
C_P = 1.005;// in kJ/kg-K
C_V = 0.718;// in kJ/kg-K
R = C_P - C_V;// in kJ/kg-K
R= R*10^3;//in J/kg-K
P1 = 3*10^5;//in N/m^2
V1 = 1.5;// m^3
T1 = 15;// in degree C
T1 = T1  +273;// in K
m1 = (P1*V1)/(R* T1);// in kg
m2 = m1+2;//final mass of air in kg
P2 = P1 * (m2/m1);// in kN/m^2
T1 = T1 - 273;// in degree C
T2 = 0;// in degree C
m = 1;// in kg
del_U = m * C_P * (T1-T2);// kJ
disp(del_U,"Total enthapy of air in kJ is");
