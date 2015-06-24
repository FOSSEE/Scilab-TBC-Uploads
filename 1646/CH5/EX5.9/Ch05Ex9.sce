// Scilab Code Ex5.9: Page:300 (2011)
clc;clear;
D5 = 3.36e-003;....// Diameter of Newton's 5th ring, m 
D15 = 5.90e-003;....// Diameter of Newton's 15th ring, m 
m = 10;    // Number of ring
R = 1;....// Radius of the plano-convex lens, m
lambda = (D15^2-D5^2)/(4*m*R);
printf("\nThe wavelength of the light used = %4d angstrom", lambda/1e-010);

// Result
// The wavelength of the light used = 5880 angstrom 
