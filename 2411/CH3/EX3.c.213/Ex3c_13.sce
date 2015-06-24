// Scilab Code Ex3c.13: Page-187 (2008)
clc; clear;
D3 = 0.181;    // Diameter of 3rd ring, cm
D23 = 0.501;    // Diameter of 23rd ring, cm
m = 23-3;    // Difference between (m+n)th and nth rings
R = 50;    // Radius of curvature of the plano-convex lens, m
lambda = (D23^2 - D3^2)/(4*m*R);    // Wavelength of the light, cm
printf("\nThe wavelength of the light used = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of the light used = 5456 angstrom