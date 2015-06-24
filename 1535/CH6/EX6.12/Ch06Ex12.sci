// Scilab Code Ex6.12 : Bragg reflection angle for the second order diffraction: Page-138 (2010)
// For (110) planes
h = 1, k = 1, l = 0;    // Miller indices for (110) planes
d_110 = 0.195e-009;    // Interplanar spacing between (110) planes, m
// As d_110 = a/(h^2 + k^2 + l^2)^(1/2), solving for a
a = d_110*(h^2 + k^2 + l^2)^(1/2);    // Lattice parameter for bcc crystal, m
// For (210) planes
h = 2, k = 1, l = 0;    // Miller indices for (110) planes
d_210 = a/(h^2 + k^2 + l^2)^(1/2);    // Interplanar spacing between (210) planes, m
n = 2;    // Seconds Order of diffraction 
lambda = 0.072e-009;    // Wavelength of X-rays, m
// From Bragg's Law, n*lambda = 2*d_210*sind(theta), solving for theta
theta = asind(n*lambda/(2*d_210));    // Bragg reflection angle for the second order diffraction, degrees
printf("\nBragg reflection angle for the second order diffraction = %5.2f degrees", theta);

// Result
// Bragg reflection angle for the second order diffraction = 35.72 degrees 