// Scilab Code Ex6.11 : Maximum order of diffraction: Page-138 (2010)
d = 0.31e-009;    // Interplanar spacing, m
n = 1;    // First Order of diffraction 
theta = 9.25;    // Glancing angle at which Bragg's reflection occurs, degrees
// From Bragg's Law, n*lambda = 2*d*sind(theta), solving for lambda
lambda = 2*d*sind(theta)/n;    // Wavelength of X-rays, m (Bragg's Law)
theta_max = 90;    // Maximum possible angle at which reflection can occur, degrees
n = 2*d*sind(theta_max)/lambda;    // Maximum possible order of diffraction
printf("\nThe Maximum possible order of diffraction = %1d",n);

// Result
// The Maximum possible order of diffraction = 6 