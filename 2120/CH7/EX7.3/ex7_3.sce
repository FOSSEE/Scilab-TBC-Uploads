// Exa 7.3
clc;
clear;
close;
// Given data
m = 5;// in kg
T1 = 50;// in °C
T1 = T1 + 273;// in K
T2 = 250;// in °C
T2 = T2 + 273;// in K
C_p = 1.0;
C_v = 0.72;
T3 = 50;// in °C
T3 = T3 + 273;// in K
del_phi = m * C_p * (log(T2/T1));// in kJ/ K (this is increase in entrophy)
del_phi1 = m * C_v * (log(T3/T2));// in kJ/K (this is decrease in entrophy)
phi_net = del_phi - abs(del_phi1);// in kJ/K
disp(phi_net,"The net change in entrophy in kJ/K is");
