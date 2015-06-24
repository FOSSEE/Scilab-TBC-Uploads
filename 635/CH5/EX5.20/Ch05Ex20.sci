// Scilab Code Ex5.20 Spacing between dislocations in a tilt boundary in fcc Ni: Page-187 (2010)
theta = 2;    // Angle of tilt, degree
a = 3.52e-010;    // Lattice parameter of Al, m
b = a/sqrt(2);    // Burger vector magnitude for fcc Ni, m
h = b/tand(theta);    // The vertical spacing between two neighbouring edge dislocations, m
printf("\nThe spacing between dislocations in a tilt boundary in fcc Ni = %4.1f angstrom", h/1D-10);
// Result
// The spacing between dislocations in a tilt boundary in fcc Ni = 71.3 angstrom