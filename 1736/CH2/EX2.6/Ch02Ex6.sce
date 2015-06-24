// Scilab Code Ex2.6 : Page-63 (2006)
clc; clear;
e = 1.6e-019;   // Energy equivalent of 1 eV, eV/J
a0 = 2.815e-010;     // Nearest neighbour distance of solid
A = 1.747;  // Madelung constant for lattice binding energy
n = 8.6;    // The repulsive exponent of solid
c = 2;  // Structural factor for rocksalt
// As n = 1 + (9*c*a0^4)/(K0*e^2*A), solving for K0
K0 = 9*c*a0^4/((n-1)*e^2*A);        // Compressibility of solid, metre square per newton
printf("\nThe compressibility of the solid = %5.3e metre square per newton", K0);

// Result 
// The compressibility of the solid = 3.325e-001 metre square per newton (Answer Given in the textbook is wrong)
