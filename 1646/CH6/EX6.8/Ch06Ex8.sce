// Scilab Code Ex6.8: Page-372 (2011)
clc;clear;
phi = %pi/2;    // Scattering angle, radian
m0 = 9.1e-031;....// Rest mass of the electron, kg
h =  6.62e-034;....// Planck's constant, J-s
c = 3e+008;....// Speed of light in vacuum, m/s 
lambda = 1.00 ;....// Wavelength of incident photon,in angstrom
del_lambda = h*(1-cos(phi))/(m0*c*1e-010);    // Compton shift, angstrom
printf("\nThe Compton shift = %6.4f angstrom", del_lambda);

// Result
// The Compton shift = 0.0242 angstrom 