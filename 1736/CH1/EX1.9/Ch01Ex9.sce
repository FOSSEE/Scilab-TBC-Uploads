// Scilab Code Ex 1.9 :Page-21 (2006)
clc; clear;
N = 6.023e+23;  // Avogadro's number

r1 = 0.122e-09;     // Ionic radii of Ga, m
r2 = 0.125e-09;     // Ionic radii of As, m
r3 = 0.11e-09;     // Ionic radii of P, m

// For GaP
r = r1 + r3;        // Interatomic separation between Ga and P atoms, m
a = 4*r/3^(1/2);    // Lattice parameter of GaP structure, m
printf("\nThe lattice parameter of GaP structure = %5.3f angstrom", a/1e-10);

// For GaAs
r = r1 + r2;        // Interatomic separation between Ga and As atoms, m
a = 4*r/3^(1/2);    // Lattice parameter of GaP structure, m
printf("\nThe lattice parameter of GaAs structure = %4.2f angstrom", a/1e-10);

// Result 
// The lattice parameter of GaP structure = 5.358 angstrom
// The lattice parameter of GaAs structure = 5.70 angstrom 

