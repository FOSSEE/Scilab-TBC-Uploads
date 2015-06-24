//Exa 7.11
clc;
clear;
close;
// Given data
p1 = 1 * 10^5;// in N/m^2
C_p = 1.005;// in kJ/kg k
R = 287;// in j/kg k
T1 = 290;// in K
T2 = 580;// in K
v1 = 1;// in m^3
m = (p1 * v1)/(R * T1);// in kg
Q = m * R * (T2-T1);// in J
Q = Q * 10^-3;// in kJ
del_phi = m * C_p * (log(T2/T1));// in kJ per K
R = R * 10^-3;// in kJ/kg K
C_v = C_p - R;// in kJ/kg k
del1_phi = m * C_v * (log(T1/T2));// in kJ/K
net_phi = del_phi + del1_phi;// in kJ/K
disp(net_phi,"Over all change in entrophy in kJ/K");

