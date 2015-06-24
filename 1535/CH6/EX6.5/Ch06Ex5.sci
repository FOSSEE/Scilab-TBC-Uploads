// Scilab Code Ex6.5 : Interplanar spacing in cubic crystal: Page-136 (2010)

// For (110) planes
h = 1; k = 1; l = 0; // Miller Indices for planes in a cubic crystal
a = 0.43e-009;    // Interatomic spacing, m
d = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (110) planes = %4.2f angstrom", d/1e-010);

// For (212) planes
h = 2; k = 1; l = 2; // Miller Indices for planes in a cubic crystal
a = 4.21D-10;    // Interatomic spacing, m
d = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (212) planes = %4.3f angstrom", d/1e-010);

// Result
// The interplanar spacing between consecutive (110) planes = 3.04 angstrom
// The interplanar spacing between consecutive (212) planes = 1.403 angstrom 

