// Exa 5.8
clc;
clear;
close;
// Given data
D = 15;
L = 25;
V_s = (%pi/4) * (D)^2 * L;// in cm^3
V_c = 400;// in cm^3
V = V_s+V_c;// in cm^3
r = V/V_c;
Rho = (V_c +( V_s*(5/100) ))/V_c;
Gamma = 1.4;
Eta = 1-((1/r)^(Gamma-1)) * ( (((Rho)^(Gamma))-1)/(Gamma*(Rho-1)) );
Eta = Eta * 100;// in %
disp(Eta,"Efficiency of diesel cycle in % is");

// Note: Calculation in the book is wrong, So the answer in the book is wrong
