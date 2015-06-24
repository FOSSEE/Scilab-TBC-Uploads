//Exa 1.7.1
clc;
clear;
close;
// Given data
E_g = 0.75// in eV
E_g = 0.75 * 1.6 * 10^-19;// in J
h = 6.63 * 10^-34;// in J
c = 3 * 10^8;// in m/s 
// hv = E_g
//E_g = (h*c)/lambda
lambda = (h*c)/E_g;// in m
lambda = lambda * 10^10;// in A°
disp(lambda,"The wavelength at which germanium starts to absorb light in A° is");
