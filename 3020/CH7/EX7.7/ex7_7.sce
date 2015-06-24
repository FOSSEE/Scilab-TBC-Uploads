clc;
clear all;
n = 1000; // Number of fringes observed
d = 0.3165e-3; // Distance moved
lambda = (2*d)/n; // Condition for interference is
disp('m',lambda,'The wavelength of light used is')
lamda=lambda*1e10;//conversion in Angstrome
disp('Angstrom',lamda,'The wavelength of light used is ')
//rounding off value of lambda in meter due to scilab..
