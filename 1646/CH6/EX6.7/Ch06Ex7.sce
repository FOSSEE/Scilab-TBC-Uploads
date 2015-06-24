// Scilab Code Ex6.7: Page-372 (2011)
clc;clear;
phi = %pi/2;    // Scattering angle, degrees
m0 = 9.1e-031;....// Rest mass of an electron, kg
h =  6.62e-034;....// Planck's constant, J-s
c = 3e+008;....// Speed of light in vacuum, m/s 
E = 8.16e-014;....// Energy of gamma radiation, J
lambda = h*c/(E*1e-010);    // Wavelength of incident photon, angstrom 
lambda_prime = lambda+h*(1-cos(phi))/(m0*c*1e-010);    // Wavelength of scattered photon, angstrom
printf("\nThe wavelength of radiation at 90 degrees = %6.4f angstrom", lambda_prime);

// Result
// The wavelength of radiation at 90 degrees = 0.0486 angstrom 