// Exa 3.1
clc;
clear;
close;
// Given data
P = 2.15 * 10^5;// in N/m^2
T = 20;// in degree C 
T = T + 273;// in K
V = 0.20;// in m^3
R = 0.2927;// in kJ/kg-K
R = R * 10^3;// in J/kg-K
m = (P*V)/(T*R);//in kg
Q = 20*10^3;// in J
C_v = 0.706*10^3;// in J/kg-K
theta = Q/(m*C_v);// in degree C
T = T - 273;// in degree C
T1 = theta + T;// new temp. in degree C
disp(T1,"New temperature in degree C is");
T1 = T1 + 273;// in K
T = T + 273;// in K
P2 = P * (T1/T);// in N/m^2
P2 = P2 * 10^-3;// in kN/m^2
disp(P2,"New pressure in kN/m^2 is");
