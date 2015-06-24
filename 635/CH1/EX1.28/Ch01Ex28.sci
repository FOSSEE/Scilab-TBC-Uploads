// Scilab Code Ex 1.28 Interplanar spacing in cubic crystal: Page-36 (2010)
h = 3; k = 2; l = 1; // Miller Indices for planes in a cubic crystal
a = 4.21D-10;    // Interatomic spacing, m
d = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing for cubic crystals, m
disp(d/1D-10, "The interplanar spacing between consecutive (321) planes : in angstrom, is :");

// Result
// The interplanar spacing between consecutive (321) planes : in angstrom, is :
// 1.1251698
