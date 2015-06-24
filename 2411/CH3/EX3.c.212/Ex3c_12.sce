// Scilab Code Ex3c.12: Page-187 (2008)
clc; clear;
D5 = 0.336;    // Diameter of 5th ring, cm
D10plus5 = 0.590;    // Diameter of (10+5)th ring, cm
m = 10;    // Difference between (10+5)th and 5th rings
lambda = 5890e-008;    // Wavelength of the light, cm
R = (D10plus5^2 - D5^2)/(4*m*lambda);    // Radius of curvature of the plano-convex lens, m
printf("\nThe radius of plano convex lens = %5.2f cm", R);

// Result
// The radius of plano convex lens = 99.83 cm 