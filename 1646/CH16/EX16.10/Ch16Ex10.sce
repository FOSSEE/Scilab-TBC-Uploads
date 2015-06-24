// Scilab Code Ex16.10 : Page-824 (2011)
clc; clear;
a = 2.5, b = 2.5, c = 1.8;    // Lattice parameter of tetragonal crystal, angstrom
h = 1; k = 1; l = 1; // Miller Indices for planes in a tetragonal crystal
d_hkl = 1/sqrt((h/a)^2+(k/b)^2+(l/c)^2);  // The interplanar spacing for tetragonal crystals, m
printf("\nThe interplanar spacing between consecutive (111) planes = %4.2f angstrom", d_hkl);

// Result 
// The interplanar spacing between consecutive (111) planes = 1.26 angstrom 
