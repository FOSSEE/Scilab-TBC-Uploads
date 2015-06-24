clc();
clear;
//Given :
lambda = 1.25; // wavelength in mu_m
n1 = 1.462; // refractive index of core
n2 = 1.457; // refractive index of cladding
// Single mode propogation : (2*pi*a*sqrt(n1^2 - n2^2))/lambda < 2.405
a  = (2.405*lambda)/(2*%pi*sqrt(n1^2 - n2^2)); // radius in mu_m
d = a*2; // diameter in mu_m
printf("Limiting diameter = %.2f mu_m",d);
