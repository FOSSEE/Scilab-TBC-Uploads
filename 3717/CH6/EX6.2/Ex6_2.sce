// Ex6_2 Page:96 (2014)
clc;clear;
v0 = 6.43e+013;    // The vibrational frequecy of CO molecule, Hz
e = 1.6e-019;    // Energy conversion factor, J/eV
mu = 1.1385e-026;    // The reduced mass of CO molecule, kg
h = 6.626e-034;    // Planck's constant, Js
E0 = 1/(2*e)*h*v0;    // Zero point energy, eV
k = 4*(22/7*v0)^2*mu;    // Force constant of the CO bond, N/m
printf("\nThe zero point energy of the CO bond = %5.3f eV", E0);
printf("\nThe force constant of the CO bond = %4d N/m", k);

// Result 
// The zero point energy of the CO bond = 0.133 eV
// The force constant of the CO bond = 1859 N/m 