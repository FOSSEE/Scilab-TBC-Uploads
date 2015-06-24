// Scilab Code Ex4.7  Page-4.16 (2004)
clc;clear;
a = 0.38;    // Lattice constant of copper, nm
h =1, k = 1, l = 0; // Miller Indices (hkl)= (110)
d = a/sqrt(h^2 + k^2 + l^2);    // Interplanar spacing for (110) plane, unit
printf("\nInterplanar spacing for (110) plane = %4.2f nm", d);

// Result 
// Interplanar spacing for (110) plane = 0.27 nm 
