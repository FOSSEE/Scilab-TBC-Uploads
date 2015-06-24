// Scilab Code Ex8.3:: Page-8.8 (2009)
clc; clear;
lambda = 7000;  // Wavelength of the Ruby laser, angstrom
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
N = 2.8e+019;   // Total number of photons
E = 12400/lambda;   // Energy of one emitted photon, eV
E_p = E*e*N;    // Total energy available per laser pulse, joule

printf("\nThe energy of one emitted photon = %4.2e J", E*e);
printf("\nThe total energy available per laser pulse = %4.2f joule", E_p);

// Result 
// The energy of one emitted photon = 2.83e-19 J
// The total energy available per laser pulse = 7.94 joule 
