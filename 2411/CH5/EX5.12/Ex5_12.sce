// Scilab Code Ex5.12: Page-289 (2008)
clc; clear;
c = 3e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
h = 6.6e-034;    // Planck's constant, Js
lambda = 0.1;    // Wavelength of X ray photon, angstrom
m0 = 9.1e-031;    // Rest mass of an electron, kg
alpha = 90;    // Scattering angle for X-ray photon, degree
d_lambda = h/(m0*c*1e-010)*(1-cosd(alpha));    // Wavelength shift after collision, angstrom
lambda_prime = lambda + d_lambda;    // Wavelength of the scattered photon, angstrom
dE = h*c*1e+010/e*(1/lambda - 1/lambda_prime);    // Energy lost by the X ray photon by collision, eV
printf("\nThe energy lost by the X ray photon by collision = %4.1f KeV", dE/1e+003);

// Result
// The energy lost by the X ray photon by collision = 24.1 KeV 
