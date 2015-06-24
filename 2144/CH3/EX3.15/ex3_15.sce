// Exa 3.15
clc;
clear;
close;
// Given data
C_P = 1.041;// in kJ/kg-K
C_V = 0.743;// in kJ/kg-K
R = C_P - C_V;// in kJ/kg-K
P1 = 140;// in kN/m^2
P2 = 1400;// in kN/m^2
V1 = 0.14;// in m^3
T1 = 25;// in degree C
T1 = T1 + 273;// in K
Gamma = 1.4;
n = 1.25;
m = (P1 *  10^3 *V1)/(R * 10^3 * T1);// in kg
V2 = V1 * (P1/P2)^(1/n);// in m^3
del_U = C_P * (log(V2/V1))  + C_V * (log(P2/P1));// in kJ/kg-K
del_U = m * del_U;// in kJ/K
disp("Part (i)")
disp(del_U,"Change in entropy in kJ/K is");
T2 = T1 * (V1/V2)^(n-1);// in K
del_U1 = C_P * (log(T2/T1)) - R*(log(P2/P1));// in kJ/kg-K
disp("Part (ii)")
disp(del_U1,"Change in entropy in kJ/kg-K is");
del_U2 = C_V * (log(T2/T1)) + R*(log(V2/V1));// in kJ/kg-K
disp("Part (iii)")
disp(del_U2,"Change in entropy in kJ/kg-K is");
del_U3 = C_V * (Gamma-n) * (log(V2/V1));// in kJ/kg-K
disp("Part (iv)")
disp(del_U3,"Change in entropy in kJ/kg-K is");
del_U4 = C_V * ((Gamma-n)/(n-1)) * (log(T1/T2));// in kJ/kg-K
disp("Part (v)")
disp(del_U4,"change in entropy in kJ/kg is");
del_U5 = C_V * ((Gamma-n)/n) * (log(P1/P2));// in kJ/kg-K
disp("Part (vi)")
disp(del_U5,"Change in entropy in kJ/kg-k is");
