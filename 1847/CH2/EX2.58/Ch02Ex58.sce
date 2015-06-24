// Scilab Code Ex2.58:: Page-2.47(2009)
clc; clear;
n = 15;      // Order of 15rd Newton ring
D_15 = 0.75;   // Diameter of fifteenth dark ring, cm
lambda = 5890e-008;     // Wavelength of light used, cm
// As D_15^2 = 4*15*R*lambda, solving for R
R = D_15^2/(4*15*lambda);    // Radius of curvature of lens, cm
// For dark ring, 2*t = n*lambda, solving for t
t = n*lambda/2;     // Thickness of air film, cm

printf("\nThe radius of curvature of lens = %5.1f cm", R);
printf("\nThe thickness of air film = %3.1e cm", t);

// Result
// The radius of curvature of lens = 159.2 cm
// The thickness of air film = 4.4e-004 cm 
