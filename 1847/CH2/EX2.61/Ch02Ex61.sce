// Scilab Code Ex2.61:: Page-2.48(2009)
clc; clear;
R1 = 200;       // Radius of curvature of the convex surface, cm
R2 = 250;       // Radius of curvature of the concave surface, cm
lambda = 5500e-008; // Wavelength of light used, cm
n = 15;     // Order of interfernce Newton ring
// As r_n^2*(1/R1-1/R2) = (2*n-1)*lambda/2, solving for r_n
r_n = sqrt((2*n-1)*lambda/(2*(1/R1-1/R2)));     // Radius of nth ring, cm
D_15 = 2*r_n;       // Daimeter of 15th bright ring, cm

printf("\nThe daimeter of 15th bright ring = %4.2f cm", D_15);

// Result
// The daimeter of 15th bright ring = 1.79 cm 
