// Exa 1.7
clc;
clear;
close;
// Given data
a = 0.26;
b = 5*10^-4;
E = 10;// in mV
T = (a/(2*b))*( sqrt(1+(4*E*b/a^2)) - 1 );// in degree C
disp("The unit of a will be mV/°C and the unit of b will be mV/°C^2")
disp(T,"The Temperature in degree C is");
