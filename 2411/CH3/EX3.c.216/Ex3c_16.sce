// Scilab Code Ex3c.16: Page-188 (2008)
clc; clear;
D10 = 5e-003;    // Diameter of 10th ring, cm
n = 10;    // Number of dark fringe
lambda = 5.9e-007;    // Wavelength of reflected light, m
R = D10^2/(4*n*lambda);    // Radius of curvature of the lens, cm
t = D10^2/(8*R);    // Thickness of the air film, cm
printf("\nThe radius of curvature of the lens = %5.3f m", R);
printf("\nThe thickness of the air film = %4.2e m", t);

// Result
// The radius of curvature of the lens = 1.059 m
// The thickness of the air film = 2.95e-006 m  