// Scilab Code Ex4.4: Page-118 (2006)
clc; clear;
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.625e-034;     // Planck's constant, Js
L = 10e-03;     // Length of side of the cube, m
// For nth level
nx = 1, ny = 1, nz = 1;     // Positive integers along three axis
En = h^2/(8*m*L^2)*(nx^2+ny^2+nz^2)/e;      // Energy of nth level for electrons, eV
// For (n+1)th level
nx = 2, ny = 1, nz = 1;     // Positive integers along three axis
En_plus_1 = h^2/(8*m*L^2)*(nx^2+ny^2+nz^2)/e;      // Energy of (n+1)th level for electrons, eV
delta_E = En_plus_1 - En;       // Energy difference between two levels for the free electrons
printf("\nThe energy difference between two levels for the free electrons = %4.2e eV", delta_E);

// Result 
// The energy difference between two levels for the free electrons = 1.13e-014 eV 

