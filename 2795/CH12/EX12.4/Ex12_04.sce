// Scilab Code Ex12.4: Page-438 (2014)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
c = 3.00e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J
B = 2.0;    // Applied magnetic field, T
mu_N = 3.15e-008;    // Nucleon magnetic moment, eV/T
mu_p = 2.79*mu_N;    // Proton magnetic moment, eV/T
delta_E = 2*mu_p*B;    // Energy difference between the up and down proton states, eV
f = delta_E*e/h;    // Frequency of electromagnetic radiation that flips the proton spins, Hz
lambda = c/f;    // Wavelength of electromagnetic radiation that flips the proton spins, m
printf("\nThe energy difference between the up and down proton states = %3.1e eV", delta_E);
printf("\nThe frequency of electromagnetic radiation that flips the proton spins = %2d MHz", f/1e+006);
printf("\nThe wavelength of electromagnetic radiation that flips the proton spins = %3.1f m", lambda);

// Result
// The energy difference between the up and down proton states = 3.5e-007 eV
// The frequency of electromagnetic radiation that flips the proton spins = 85 MHz
// The wavelength of electromagnetic radiation that flips the proton spins = 3.5 m 