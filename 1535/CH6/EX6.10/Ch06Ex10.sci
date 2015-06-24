// Scilab Code Ex6.10 : Lattice parameter for (110) planes of cubic crystal: Page-137 (2010)
h = 1; k = 1; l = 0; // Miller Indices for planes in a cubic crystal
n = 1;    // First Order of diffraction 
theta = 25;    // Glancing angle at which Bragg's reflection occurs, degrees
lambda = 0.7e-010;    // Wavelength of X-rays, m
// From Bragg's Law, n*lambda = 2*d*sind(theta), solving for d
d = n*lambda/(2*sind(theta));    // Interplanar spacing of cubic crystal, m
a = d*(h^2+k^2+l^2)^(1/2);  // The lattice parameter for cubic crystal, m
printf("\nThe lattice parameter for cubic crystal = %4.2f angstrom", a/1e-010);

// Result
// The lattice parameter for cubic crystal = 1.17 angstrom 