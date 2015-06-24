// Scilab Code Ex6.9: Page-373 (2011)
clc;clear;
phi = %pi/2;       // Scattering angle, radian
m0 = 9.1e-031;....// Rest mass of the electron, kg
h =  6.62e-034;....// Planck's constant, J-s
c = 3e+008;....// Speed of light in vacuum, m/s 
// As Compton shift = del_lambda = lambda, so
lambda = h*(1-cos(phi))/(m0*c*1e-010);    // Wavelength of incident photon, angstrom
printf("\nThe wavelength of incident radiation = %6.4f angstrom", lambda);

// Result
// The wavelength of incident radiation = 0.0242 angstrom 