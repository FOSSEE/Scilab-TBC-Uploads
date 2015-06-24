// Scilab Code Ex16.9 : Page-824 (2011)
clc; clear;
a = 4.2e-010;    // Lattice parameter of cubic crystal, m
h = 3; k = 2; l = 1; // Miller Indices for planes in a cubic crystal
d_321 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (321) planes = %4.2f angstrom", d_321/1e-010);

// Result 
// The interplanar spacing between consecutive (321) planes = 1.12 angstrom 
