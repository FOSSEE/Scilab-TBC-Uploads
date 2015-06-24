// Scilab code Ex1.5: Pg:20 (2008)
clc;clear;
m = 9.1e-031;    // Mass of the electron, kg-m
h = 6.62e-034;    // Planck's constant, joule-sec
Lambda = 3e-002;    // de-Broglie wavelength of the electron, m
E = h^2/(2*m*Lambda^2);    // Energy of the electron wave, joule
printf("\nThe energy of the electron wave = %4.2e eV", E/1.6e-019);

// Result 
// The energy of the electron wave = 1.67e-015 eV