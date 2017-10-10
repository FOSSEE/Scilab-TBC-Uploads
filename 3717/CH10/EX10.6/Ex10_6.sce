// Ex10_6  Page:213 (2014)
clc;clear;
r = 0.152e-09;    // Atomic radius of silver, m
a = 4*r/sqrt(2);    // Lattice parameter for silver, m
// Case-I
h = 2; k = 3; l = 1; // Miller Indices for first set of planes
d_231 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing of (2 3 1) planes, m
printf("\nThe interplanar spacing of (2 3 1) planes = %6.4f nm", d_231/1e-09);
// Case-II
h = 1; k = 1; l = 0; // Miller Indices for second set of planes
d_110 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing of (1 1 0) planes, m
printf("\nThe interplanar spacing of (1 1 0) planes = %5.3f nm", d_110/1e-09);

// Result
// The interplanar spacing of (2 3 1) planes = 0.1149 nm
// The interplanar spacing of (1 1 0) planes = 0.304 nm 