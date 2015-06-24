// Scilab Code Ex5.18: Page-293 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
e = 1.602e-019;    // Energy equivalent of 1 eV, J
E_k = 12.8e+006;    // Energy of the moving neutron, eV
m0 = 1.675e-027;    // Rest mass of a neutron, kg
lambda = h/sqrt(2*m0*E_k*e) // de-Broglie wavelength associated with the moving neutron, m
printf("\nThe de-Broglie wavelength of the moving neutron = %3.1e angstrom", lambda/1e-010);

// Result
// The de-Broglie wavelength of the moving neutron = 8.0e-005 angstrom 