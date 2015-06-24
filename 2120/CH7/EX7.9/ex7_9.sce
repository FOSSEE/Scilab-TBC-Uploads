// Exa 7.9
clc;
clear;
close;
// Given data
m = 5;// in kg
s= 4.18;
T1 = 0;// in °C
T2 = 20;// in °C
dt = T2 - T1;// in °C
Q = m * s * dt;// in kJ
L = 335;// in kJ/kg
// Q = m_i * l
m_i = Q/L;// in kg
T1 = T1 + 273;// in K
T2 = T2 + 273;// in K
del_S = ((m_i * L)/T1) - (m * s * (log(T1/T2)));// in kJ per K
disp(del_S,"Change in entrophy of the adiabatic in kJ/K is");
