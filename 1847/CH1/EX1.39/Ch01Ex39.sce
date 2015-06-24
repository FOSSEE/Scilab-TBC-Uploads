// Scilab Code Ex1.39: : Page-1.57 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m0 = 9.1e-031;   // Electronic mass, kg
c = 3e+08;      // Speed of light, m/s
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
phi = 60;     // Scattering angle of X-rays, degrees
E = 75;     // Incident energy of X-rays, keV
// As from Compton shift formula
delta_L = h/(m0*c)*(1-cosd(phi));   // Change in photon wavelength, m
lambda = 0.198e-010;    // Wavelength of incident photon, m
lambda_prime = (lambda+delta_L)/1e-010;  // Wavelength of scattered X-ray, angstrom 

printf("\nThe wavelength of scattered X-ray = %6.4f angstrom", lambda_prime);

// Result 
// The wavelength of scattered X-ray = 0.2101 angstrom
