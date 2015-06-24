// Exa 1.2
clc;
clear;
close;
// Given data
Rho = 13.6;
g = 9.81;
a = 760;// in mm
b = 480;// in mm
h = a-b;// in mm
P = (1000*Rho*g*h)/(1000);// in N/m^2
disp(P,"The absolute pressure in N/m^2 is");
P = P /100;// in mbar
disp(P,"The absolute pressure in mbar is");
