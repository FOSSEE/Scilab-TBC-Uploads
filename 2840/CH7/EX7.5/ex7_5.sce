clc;
clear all;
Tf = 1400; // Fictive temperature of silicon in Kelvin
betai = 7e-11; // Isothermal compressibility square meter per newton
n = 1.46; // Refractive index of silicon
p = 0.286; // Photoelastic constant of silicon
lambda = 0.63e-6 // Wavelength in micrometer
kb = 1.38e-23 // Boltzmann constant in joule per kelvin
L = 1e3;
alphas = (8 * %pi^3 * n^8 * p^2 * kb * Tf * betai)/(3 * lambda^4);//Rayleigh scattering coefficient
alphars = exp(-alphas * L);//Loss factor
disp('meter^-1',alphas,'Rayleigh scattering coefficient is ');
disp('',alphars,'Loss factor is');
