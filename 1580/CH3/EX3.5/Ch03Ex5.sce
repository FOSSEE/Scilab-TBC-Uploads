/// Scilab Code Ex3.5 : Page-3.5 (2004)
clc;clear;
r = 0.1278; // Atomic radius, nm
a = 4*r/sqrt(2);  // Lattice constant, nm
h1 = 1, k1 = 1, l1 = 0;    // Miller Indices of (110) planes
d_110 = a/sqrt(h1^2 + k1^2 + l1^2);    // Interplanar spacing for (110) planes, nm
h2 = 2, k2 = 1, l2 = 2;    // Indices of third set of parallel planes
d_212 = a/sqrt(h2^2 + k2^2 + l2^2);    // Interplanar spacing for (111) planes, nm
printf("\nInterplanar spacing for (110) planes = %6.4f nm", d_110);
printf("\nInterplanar spacing for (212) planes = %6.4f nm", d_212);

// Result 
// Interplanar spacing for (110) planes = 0.2556 nm
//  Interplanar spacing for (212) planes = 0.1205 nm 
