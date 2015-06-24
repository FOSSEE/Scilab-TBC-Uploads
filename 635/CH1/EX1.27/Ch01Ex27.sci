// Scilab Code Ex 1.27 Interplanar spacing in tetragonal crystal: Page-33 (2010)
h = 1; k = 0; l = 1; // Miller Indices for planes in a cubic crystal
a = 2.42D-10;   b = 2.42D-10;   c = 1.74D-10; // Lattice parameters of a tetragonal crystal, each in m
d = [(h^2+k^2)/a^2 + l^2/c^2]^(-1/2); // The interplanar spacing for cubic crystal, m  
disp(d/1D-10, "The interplanar spacing between consecutive (101) planes : in angstrom, is :"); 

// Result
// The interplanar spacing between consecutive (101) planes : in angstrom, is :
// 1.4127338