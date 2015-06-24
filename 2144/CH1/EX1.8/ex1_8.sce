// Exa 1.8
clc;
clear;
close;
// Given data
Q_w = 500;// quantity of water flowing in kg/minute
T1 = 80;// in ° C
T2 = 20;// in °C
del_T = T1-T2;// in °C
Spe_heat = 4.182;// in kJ/kg
Q_h = Q_w*del_T*Spe_heat;// in kJ/minute
disp("Quantity of heat supplied to water in the economizer is "+string(Q_h)+" kJ/minute or "+string(Q_h*10^-3)+" MJ/minute");
