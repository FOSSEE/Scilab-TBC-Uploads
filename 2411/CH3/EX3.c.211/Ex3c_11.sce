// Scilab Code Ex3c.11: Page-187 (2008)
clc; clear;
D_n = 0.42;    // Diameter of nth ring, cm
D_mplusn = 0.7;    // Diameter of (m+n)th ring, cm
m = 14;    // Difference between (m+n)th and nth rings
R = 100;    // Radius of curvature of the plano-convex lens, m
lambda = (D_mplusn^2 - D_n^2)/(4*m*R);    // Wavelength of the light, cm
printf("\nThe wavelength of the light used = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of the light used = 5600 angstrom 