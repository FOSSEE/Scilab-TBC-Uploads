// Scilab Code Ex7.10:: Page-7.14 (2009)
clc; clear;
n1 = 1.480;     // Refractive index of core material
n2 = 1.47;     // Refractive index of cladding material
lambda = 850e-006;  // Wavelength of light used, m
NA = sqrt(n1^2-n2^2);      // Numerical aperture of the step index fibre
theta0 = asind(NA);     // Maximum acceptance angle for the fibre, degrees
M_N = 1;    // Number of modes in step index cable
// As number of modes, M_N = 1/2*V^2, solving for V
V = sqrt(2*M_N);    // V-number for the fibre
// As V = 2*%pi*a/lambda*NA, solving for a
a = V*lambda/(2*%pi*NA);    // Radius of core for single mode operation in step index fibre, m

printf("\nThe radius of core for single mode operation in step index fibre = %3.1e", a);

// Result 
// The radius of core for single mode operation in step index fibre = 1.1e-03 
// The ansswer is quoted wrong in the textbook
