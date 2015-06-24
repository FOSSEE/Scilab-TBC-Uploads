// Exa 6.29
clc;
clear;
close;
// Given data
P1 = 0.85*10^3;// in kN/m^2
P2 = 0.17*10^3;// in kN/m^2
n = 1.13;
x1 = 0.95;
V1 = x1*0.227;// in m^3/kg
V2 = V1 * ((P1/P2)^(1/n));// in m^3/kg
x2 = V2/1.032;
disp(x2,"Final dryness fraction of steam is");
W = (P1*V1-P2*V2)/(n-1);// in kJ/kg
disp(W,"Change in internal energy in kJ/kg is");
