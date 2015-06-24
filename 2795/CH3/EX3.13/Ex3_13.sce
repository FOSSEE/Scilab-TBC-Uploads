// Scilab Code Ex3.13: Page-110 (2013)
clc; clear
lambda = 350;    // Wavelength of incident light, nm
e = 1.6e-019;    // Energy equivalent of 1 eV, J
E = 1.250e+003/lambda;    // Total energy of the incident light, eV
I = 1e-008;    // Intensity of incident light, W/Sq.m
// As Intensity, I = N*E, solving for N
N = I/(E*e);    // The number of photons in the light beam
printf("\nThe number of photons in the light beam = %3.1e photons/Sq.m/s", N);

// Result
// The number of photons in the light beam = 1.8e+010 photons/Sq.m/s 