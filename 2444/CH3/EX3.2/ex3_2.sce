// Exa 3.2
clc;
clear;
close;
format('v',6)
// Given data
a = 93;// in cm^2
x = 0.1;// in Wb/m^2
y = 50;// in AT/m
// Hysteresis loss/m^3/cycle 
H = a*x*y;// in J/m^3/cycle
f = 65;// in Hz
V = 1500;// in cm^3
V = V * 10^-6;// in m^3
Ph = H*f*V;// in W
disp(Ph,"The hysteresis loss in W is");
