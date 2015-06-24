// Scilab Code Ex3.11: Page-109 (2013)
clc; clear
phi = 2.93;    // Work function of lithium, eV
lambda = 400e-009;    // Wavelength of incident light, m
e = 1.6e-019;    // Energy equivalent of 1 eV, J
c = 2.998e+008;    // Speed of light in vacuum, m/s
h = 6.626e-034;    // Planck's constant, Js
E = h*c/(lambda*e);    // Energy of incident light, eV
V0 = E - phi;    // Stopping potential, V
printf("\nThe energy of incident photons = %4.2f eV", E);
printf("\nThe stopping potential = %4.2f V", V0);

// Result
// The energy of incident photons = 3.10 eV
// The stopping potential = 0.17 V 