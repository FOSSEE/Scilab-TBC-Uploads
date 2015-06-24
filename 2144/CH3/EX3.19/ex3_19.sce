// Exa 3.19
clc;
clear;
close;
// Given data
R = 0.287;// in kJ/kg-K
P1 = 30;// in bar
V1 = 0.12;// in m^3
m = 1.8;// in kg
U= 8.3143;// in kJ/kg-mol-K
T1 = (P1 * 10^5 * V1)/(m*R*10^3);// in K
T1 = T1 - 273;// in degree C
disp(T1,"The temperature in degree C is");
m_m = U/R;// in kg
disp(m_m,"The molecular mass in kg is");
V_s = V1/m;// in m^3
disp(V_s,"The Specific volume in m^3 is');
V_m = V_s * m_m;// in m^3
disp(V_m,"Molecular volume in m^3 is");
