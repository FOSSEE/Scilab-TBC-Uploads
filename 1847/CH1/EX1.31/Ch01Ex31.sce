// Scilab Code Ex1.31:  : Page-1.44 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;   // Electronic mass, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
l = 2e-002;     // Length of the side of the cube, m
E_F = 9*e;  // Fermi energy, J
// As E_F = h^2/(8*m*l^2)*(nx^2 + ny^2 + nz^2) and nx = ny = nz for a cube, solving for nx
nx = sqrt(E_F*(8*m*l^2)/(3*h^2));   // Value of integer for a cube
E = h^2/(8*m*l^2)*3*nx^2; // Fermi energy, J
E1 = h^2/(8*m*l^2)*((nx-1)^2 + nx^2 + nx^2);    // Energy of the level just below the fermi level, J
delta_E = E - E1;   // Difference in the energy between the neighbouring levels of Na at the highest state, J

printf("\nThe energy difference between the neighbouring levels of Na at the highest state = %4.2e eV", delta_E/e);

// Result 
// The energy difference between the neighbouring levels of Na at the highest state = 1.06e-07 eV 
