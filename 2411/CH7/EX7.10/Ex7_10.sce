// Scilab Code Ex7.10: Page-380 (2008)
clc; clear;
h = 3; k = 2; l = 1; // Miller Indices for planes in a cubic crystal
a = 4.21D-10;    // Interatomic spacing, m
d = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
printf("\nThe interplanar spacing between consecutive (321) planes = %3.1e m", d);

// Result
// The interplanar spacing between consecutive (321) planes = 1.1e-010 m 