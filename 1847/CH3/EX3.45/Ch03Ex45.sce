// Scilab Code EX3.45:: Page-3.58 (2009)
clc;clear;
lambda = 5500e-010;  // Wavelength of light used, m
a = 0.01;   // Diameter of objective of telescope, m
f = 3.0;    // Focal length of tlescope objective, m 
// For telescope, the limit of resolution, 
// theta = x/f = 1.22*lambda/a, solving for x
x = 1.22*lambda/a*f;    // Distance between centres of imgaes of the two stars

printf("\nThe distance between centres of imgaes of the two stars = %4.2e m", x);

// Result
// The distance between centres of imgaes of the two stars = 2.01e-04 m 
