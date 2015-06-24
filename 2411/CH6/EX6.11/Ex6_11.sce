// Scilab Code Ex6.11: Page-351 (2008)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Energy equivalent of 1 eV, J
rho = 10.5;    // Density of silver, g/cc
A = 108;    // Atomic weight of Ag, g/mole
N_A = 6.023e+023;    // Avogadro's number
E_F0 = h^2/(8*m)*(3*N_A*rho*1e+006/(%pi*A))^(2/3);     // Fermi energy of silver at 0 K, J
U = 3/5*(N_A*rho*1e+006/A)*E_F0;    // Internal energy of the electron gas per unit volume at 0 K, J/metre-cube
printf("\nThe Fermi energy of silver at 0 K = %3.1f eV", E_F0/e);
printf("\nThe internal energy of the electron gas per unit volume at 0 K = %4.2e J/cubic-metre", U);

// Result
// The Fermi energy of silver at 0 K = 5.5 eV
// The internal energy of the electron gas per unit volume at 0 K = 3.07e+010 J/cubic-metre 