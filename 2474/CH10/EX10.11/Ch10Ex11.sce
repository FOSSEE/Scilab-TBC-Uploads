// Scilab code Ex10.11: Pg.464 (2008)
clc; clear;
T_c = 0.517;    // Critical temperature for Cadmium, K
k = 1.38e-23;    // Boltzmann constant, J/K
q = 1.6e-19;    // Electronic charge, J/eV
h = 6.63e-34;    // Planck's constant, J-s
c = 3e+08;    // Velocity of light, m/s
E_g = 3.5*k*T_c/q;    // Energy gap for cadmium, eV
lambda = h*c/(E_g*q);    // Required wavelength of photon, m
printf("\nThe energy gap for cadmium = %4.2e eV ", E_g);
printf("\nThe required wavelength of photon = %4.2e m", lambda);

// Result
// The energy gap for cadmium = 1.56e-004 eV 
// The required wavelength of photon = 7.97e-003 m 