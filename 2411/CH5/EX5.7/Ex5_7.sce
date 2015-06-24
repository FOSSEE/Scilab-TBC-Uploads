// Scilab Code Ex5.7: Page-286 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
e = 1.6e-019;    // Energy quivalent of 1 eV, J
phi = 4.2*e;    // Work function for material, J
lambda = 2000e-010;    // Wavelength of incident radiation, m
E = h*c/lambda;    // Energy of the incidnt radiation, J
KE_fast = (E - phi)/e;    // Kinetic energy of the fastest photoelectron, eV
KE_slow = 0;    // Kinetic energy of the slowest photoelectron, eV
printf("\nThe kinetic energy of the fastest photoelectron = %d eV", KE_fast);
printf("\nThe kinetic energy of the slowest photoelectron = %d eV", KE_slow);
V = (E - phi)/e;    // Stopping potential, V
printf("\nThe stopping potential = %d volt", V);

// Result
// The kinetic energy of the fastest photoelectron = 2 eV
// The kinetic energy of the slowest photoelectron = 0 eV
// The stopping potential = 2 volt 