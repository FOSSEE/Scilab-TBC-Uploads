// Scilab Code Ex3c.15: Page-188 (2008)
clc; clear;
D10 = 0.50;    // Diameter of 10th ring, cm
n = 10;    // Number of dark fringe
lambda = 6250e-008;    // Wavelength of light used, cm
R = D10^2/(4*n*lambda);    // Radius of curvature of the lens, cm
t = D10^2/(8*R);    // Thickness of the air film, cm
printf("\nThe radius of curvature of the lens = %3d cm", R);
printf("\nThe thickness of the air film = %9.7f cm", t);

// Result
// The radius of curvature of the lens = 100 cm
// The thickness of the air film = 0.0003125 cm 