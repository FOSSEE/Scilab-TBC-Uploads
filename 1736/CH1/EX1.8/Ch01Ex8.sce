// Scilab Code Ex 1.8 :Page-21 (2006)
clc; clear;
N = 6.023e+23;  // Avogadro's number

// For silicon crystallized into diamond structure
a = 5.43e-08;   // Lattice parameter of Si, cm
M = 28.1;   // Atomic mass of Si, g/mol
n = 8/a^3;       // Number of atoms per unit volume, atoms per cm cube
d = n*M/N;      // Density of Si crytal, g/cm
printf("\nThe density of crystallized Si = %4.2f gram per cm cube", d);

// For GaAs crystallized into Zinc Blende structure
a = 5.65e-08;   // Lattice parameter of GaAs, cm
M_Ga = 69.7;    // Atomic weight of Ga, g/mol
M_As = 74.9;    // Atomic weight of As, g/mol
M = M_Ga + M_As;   // Atomic weight of GaAs, g/mol
n = 4/a^3;       // Number of atoms per unit volume, atoms per cm cube
d = n*M/N;      // Density of Si crytal, g/cm
printf("\nThe density of crystallized GaAs = %5.3f gram per cm cube", d);

// Result 
// The density of crystallized Si = 2.33 gram per cm cube
// The density of crystallized GaAs = 5.324 gram per cm cube 12 

