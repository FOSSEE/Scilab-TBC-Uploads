// Ex9_10  Page:198 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
B0 = 1.3;    // External magnetic field, T
mu_B = 9.27e-024;    // Bohr's magneton, J/T
nu = 35e+009;    // Operating frequency, Hz
g = h*nu/(mu_B*B0);    // Electron g-factor
printf("\nThe electron g-factor for the unpaired electron = %5.3f", g);

// Result
// The electron g-factor for the unpaired electron = 1.924 