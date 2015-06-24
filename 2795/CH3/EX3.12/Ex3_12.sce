
// Scilab Code Ex3.12: Page-109 (2013)
clc; clear
phi = 2.93;    // Work function of lithium, eV
c = 2.998e+008;    // Speed of light in vacuum, m/s
K = 3.00;    // Kinetic energy of photoelectron, eV
E = phi + K;    // Total energy of the incident light, eV
h = 6.626e-034;    // Planck's constant, Js
e = 1.6e-019;    // Energy equivalent of 1 eV, J
f = E*e/h;    // Frequency of incident light, Hz
lambda = c/f;    // Wavelength of the incident light, m
printf("\nThe frequency of incident light = %4.2e Hz", f);
printf("\nThe wavelength of the incident light = %4.2f nm", lambda/1e-009);

// Result
// The frequency of incident light = 1.43e+015 Hz
// The wavelength of the incident light = 209.37 nm 
