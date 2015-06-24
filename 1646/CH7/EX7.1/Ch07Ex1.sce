// Scilab Code Ex 7.1: Page-411 (2011)
clc;clear;
e = 1.6e-019;....// Charge on an electron, eV 
h = 6.62e-034;....// Planck's constant, J-s
c = 3e+008;....// Speed of light in vacuum, m/s
n = 2.8e+019;....// Number of photons in laser pulse
lambda = 7e-007;....// Wavelength of the radiation emited by the laser, m
E = h*c/(lambda*e);....// Energy of the photon in the laser light, eV
del_E = E*n;....// The energy of laser pulse having n photons, eV
printf("\nThe energy of the laser pulse = %4.2e eV", del_E); 

// Result
// The energy of the laser pulse = 4.97e+019 eV 