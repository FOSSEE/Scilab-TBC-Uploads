// Scilab Code Ex1.32:: Page-1.45 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 1.67e-027;   // Electronic mass, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
nx = 1, ny = 1, nz = 1; // Principle quantum numbers in 3D corresponding to the longest energy state
lx = 1e-014, ly = 1e-014, lz = 1e-014;    // Dimensions of the box to which the neutron is confined, m
E = h^2/(8*m)*(nx^2/lx^2+ny^2/ly^2+nz^2/lz^2);    // Energy of the neutron confined in the nucleus, J

printf("\nThe energy of the neutron confined in a nucleus = %4.2e eV", E/e);

// Result 
// The energy of the neutron confined in a nucleus = 6.11e+06 eV 
