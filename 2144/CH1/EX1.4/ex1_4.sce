// Exa 1.4
clc;
clear;
close;
// Given data
Rho = 0.78;// in kg/m^3
g = 9.81;
h = 3;// in m
b = g*Rho*h*1000;// in N/m^2
b = b * 10^-3;// in kN/m^2
disp(b,"The gauge pressure in kN/m^2 is");
