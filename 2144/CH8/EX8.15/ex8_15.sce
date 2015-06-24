// Exa 8.15
clc;
clear;
close;
// Given data
H2 = 50;// in %
CO = 5;// in %
CH4 = 35;// in %
disp("Quantity of air required for complete combustion of 1m^3 of gas in m^3 is:")
V = ((0.5*(H2+CO))+(2*CH4))/21;// in m^3
disp(V)
