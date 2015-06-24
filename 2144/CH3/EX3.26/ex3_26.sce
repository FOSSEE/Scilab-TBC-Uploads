// Exa 3.26
clc;
clear;
close;
// Given data
R = 0.26;// in kJ/kg-K
R = R * 10^3;// in J/kg-K
Gamma = 1.4;
P1 = 3.1;// MN/m^2
P1 = P1 * 10^6;// N/m^2
P2 = 1.7;// in  MN/m^2
P2 = P2 * 10^6;// in N/m^2
V1 = 500;// in cm^3

T = 18;// in degree C
T = T + 273;// in K
T2 = 15;// in degree C
T2 = T2 + 273;// in K
m = (P1*V1)/(R*T)*10^-3;// in kg
m_desh = (P2*V1)/(R*T2)*10^-3;//in kg
M = m-m_desh;// in kg
disp(M,"The mass of oxygen in kg is");
R = R * 10^-3;// in kJ/kg-K
C_v = R/(Gamma-1);// in kJ/kg-K
Q = m_desh*C_v * (T-T2);// kJ
disp(Q,"Heat transfered in kJ is");
