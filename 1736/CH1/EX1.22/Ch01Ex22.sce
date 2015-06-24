// Scilab Code Ex 1.22 Page-33 (2006)
clc; clear;
r = 1.746e-010;     // Atomic radius of lead atom, angstrom
a = 4*r/sqrt(2);    // Interatomic spacing, m
h = 1; k = 0; l = 0; // Miller Indices for planes in a cubic crystal
d_100 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (100) planes = %4.2f angstrom", d_100/1e-010);

h = 1; k = 1; l = 0; // Miller Indices for planes in a cubic crystal
d_110 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (110) planes = %5.3f angstrom", d_110/1e-010);

h = 1; k = 1; l = 1; // Miller Indices for planes in a cubic crystal
d_111 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (111) planes = %4.2f angstrom", d_111/1e-010);

// Result
// The interplanar spacing between consecutive (100) planes = 4.94 angstrom
// The interplanar spacing between consecutive (110) planes = 3.492 angstrom
// The interplanar spacing between consecutive (111) planes = 2.85 angstrom 
