// Exa 3.7
clc;
clear;
close;
// Given data
L = 100*10^-6;// in m
Miu_e = 0.13;// in m^2/V-s
Torque_h = 10^-6;// in s
Miu_h = 0.05;// in m^2/v-s
V = 12;// in V
Torque_n = ((L)^2)/(Miu_e*V);// in s
disp(Torque_n,"Electron transit time in sec is");
P = (Torque_h/Torque_n)*(1+(Miu_h/Miu_e));
disp(P,"Photoconductor gain is");
