// Scilab Code 5.10: : Page-190 (2013)
clc; clear;
dx = 6e-015;    // The uncertainty in position of the electron, m
h_bar = 1.054e-034;    // PReduced Planck's constant, Js
e = 1.602e-019;    // Energy equivalnet of 1 eV, J/eV
c = 3e+008;    // Speed of light, m/s
E0 = 0.511e+006;    // Rest mass energy of the electron, J
dp = h_bar*c/(2*dx*e);    // Minimum electron momentum, eV/c
p = dp;    // Momentum of the electron at least equal to the uncertainty in momentum, eV/c
E = sqrt(p^2+E0^2)/1e+006;    // Relativistic energy of the electron, MeV 
K = E - E0/1e+006;    // Minimum kinetic energy of the electron, MeV
printf("\nThe minimum kinetic energy of the electron = %4.1f MeV", K);

// Result
// The minimum kinetic energy of  the electron = 15.9 MeV 
