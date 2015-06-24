// Exa 3.2
clc;
clear;
close;
// Given data
P = 350;// in kN/m^2
P = P * 10^3;// in N/m^2
m = 1;// in kg
m = m * 10^3;// in gram
V = 0.35;// in m^3
C_p = 1.005;// in kJ/kg-K
C_v = 0.710;// in kJ/kg-K
R = C_p - C_v;// in kJ/kg-K
T = (P*V)/(m*R);// in K
T = T - 273;// in degree C
disp(T,"The intial temperature in degree C is");
T = T + 273;// in K
T1 = 316;// in degree C
T1 = T1 + 273;// in K
P2 = P * (T1/T);// in N/m^2
P2 = P2 * 10^-3;// in kN/m^2
disp(P2,"The final pressure of air in kN/m^2 is");
T = T - 273;// in degree C
T1 = T1 - 273;// in degree C
m = m * 10^-3;// in kg
Q = m * C_v * (T1-T);// in kJ
disp(Q,"Heat added in kJ is");
G = m*C_v * (T1-T);// Gain of internal energy in kJ
disp(G,"Gain of internal energy in kJ is");
G_enthalpy = m*C_p*(T1-T);// Gain of enthalpy in kJ
disp(G_enthalpy,"Gain of enthalpy in kJ is");
