// Scilab Code Ex6.6 : Interplanar spacing in cubic crystal: Page-136 (2010)
h = 2; k = 3; l = 1; // Miller Indices for planes in a cubic crystal
r = 0.175e-009;    // Atomic radius of fcc lattice, m
a = 2*sqrt(2)*r;    // Interatomic spacing of fcc lattice, m
d = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (231) planes = %4.2f ansgtrom", d/1e-010);

// Result
// The interplanar spacing between consecutive (231) planes = 1.32 ansgtrom 

