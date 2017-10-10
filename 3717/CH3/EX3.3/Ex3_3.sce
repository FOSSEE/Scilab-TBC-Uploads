// Ex3_3 Page:48 (2014)
clc; clear;
h = 6.626e-034; // Planck's constant, Js
c = 3e+08;  // Speed of light in vacuum, m/s
e = 1.6e-019;   // Charge on an electron, C
T = 10.5;   // Kinetic energy of ejected electron, eV
E = 13.6 + T;   // Energy of the photon, eV
lambda = h*c/(E*e); // Wavelength of incident photon from Planck's Quantum relation, m
printf("\nWavelength of the photon that would ionize a hydrogen atom = %5.2f nm", lambda/1e-09);

// Result
// Wavelength of the photon that would ionize a hydrogen atom = 51.55 nm 

