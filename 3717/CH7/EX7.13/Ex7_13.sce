// Ex7_13 Page:141 (2014)
clc;clear;
Z = 11;    // Atomic number of sodium
h = 6.626e-034;    // Planck's constant, Js
e = 1.6e-019;    // Energy conversion factor, J/eV
c = 3e+08;    // Speed of light in vacuum, m/s
R_inf = 1.097e+07;    // Rydberg constant, per metre
E_K_alpha = (3*h*c*R_inf*(Z - 1)^2)/(4*e*1e+03);    // The energy of the K_alpha X-ray of sodium, keV
printf("\nThe energy of the K_alpha X-ray of sodium = %4.2f keV", E_K_alpha);

// Result
// The energy of the K_alpha X-ray of sodium = 1.02 keV 