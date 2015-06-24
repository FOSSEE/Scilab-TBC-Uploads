clc;
clear all;
lambda = 6715e-10; // Wvelength of light in meters
h = 6.626e-34; // Planck's Constant
c = 3e8;
Eg = (h*c)/(lambda*1.6e-19);
disp('eV',Eg,'The band gap of the given material is ')
