// Scilab Code Ex 1.26 Lattice parameter of a cubic crystal: Page-33 (2010)
h = 1; k = 1; l = 1; // Miller Indices for planes in a cubic crystal
d = 2D-10;    // Interplanar spacing, m
// For cubic crystals, the interplanar spacing is given by
// d = a/(h^2+k^2+l^2)^1/2;
// Solving for a
a = (h^2+k^2+l^2)^(1/2)*d;   // lattice parameter of cubic crystal, m 
disp(a/1D-10, "The lattice parameter of the cubic crystal, in angstrom, is :");

// Result
// The lattice parameter of the cubic crystal, in angstrom, is :
// 3.4641016
