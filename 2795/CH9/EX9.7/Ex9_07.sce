// Scilab Code Ex9.7: Page-320 (2014)
clc; clear;
e = 1.6e-019;    // Energy equivalent of 1 eV, J
n = 8.47e+028;    // Number density of conduction electrons in copper, per metre cube
k = 1.38e-023;    // Boltzmann constant, J/K
h = 6.626e-034;    // Planck's constant, Js
m = 9.11e-031;    // Mass of an electron, kg
E_F = h^2/(8*m*e)*(3*n/%pi)^(2/3);    // Fermi energy for copper, eV
T_F = E_F*e/k;    // Fermi temperature for copper, K
printf("\nThe Fermi energy for copper = %4.2f eV", E_F);
printf("\nThe Fermi temperature for copper = %4.2e K", T_F);

// Result
//  The Fermi energy for copper = 7.04 eV
// The Fermi temperature for copper = 8.16e+004 K 