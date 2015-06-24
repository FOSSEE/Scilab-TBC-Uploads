// Scilab Code Ex7.6:: Page-7.9 (2009)
clc; clear;
n1 = 1.544;     // Refractive index of the core material
theta0 = 35;    // Acceptance angel for an optical fibre, degrees
// As theta0 = asind(sqrt(n1^2-n2^2)), solving for n2
n2 = sqrt(n1^2-sind(theta0)^2);     // Refractive index of cladding

printf("\nThe refractive index of the cladding = %4.2f", n2);

// Result 
// The refractive index of the cladding = 1.43 
