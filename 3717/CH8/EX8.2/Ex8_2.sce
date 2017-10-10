// Ex8_2 Page:164 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Energy conversion factor, J/eV
rho = 10.5;    // Density of silver, g/cc
M = 108;    // Atomic weight of silver, g/mol
N_A = 6.02e+023    // Avogadro's number, atoms/mol
n = rho*N_A/(M*1e-06);    // Number density of conduction electrons, per/metre-cube
E_F = h^2/(8*m*e)*(3/%pi*n)^(2/3);    // Fermi energy, eV
E_bar = 3/5*E_F;    // Mean energy of electron at 0 K, eV
printf("\nThe number density of conduction electrons = %4.2e per metre-cube", n);
printf("\nThe Fermi energy for silver = %4.2f eV", E_F);
printf("\nThe mean energy of the electron at 0 K = %4.2f eV", E_bar);

// Result
// The number density of conduction electrons = 5.85e+028 per metre-cube
// The Fermi energy for silver = 5.51 eV
// The mean energy of the electron at 0 K = 3.31 eV 
