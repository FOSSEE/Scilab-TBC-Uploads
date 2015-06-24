// Scilab Code Ex8.6 Calculation of atomic number from wavelength using Moseley's law Page-256 (2010)
c = 3.0e+08;    // Speed of light, m/s
h = 6.626e-034;    // Planck's constant, Js
epsilon_0 = 8.85e-012;    // Absolute electrical permittivity of free space, coulomb square per newton per metre square
m = 9.1e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Charge on an electron, C
lambda = 0.7185e-010;    // Wavelength of K_alpha line of unknown element
b = 1;    // Mosley's constant for K-series
n_1 = 1; n_2 = 2;    // Lower and upper energy levels
// We know that f = c/lambda = m*e^4*(Z-b)^2/(8*epsilon_0^2*h^3)*(1/n_2^2-1/n_1^2)
// This implies that lambda = (8*epsilon_0^2*c*h^3/(m*e^4*(Z-b)^2*(1/n_2^2-1/n_1^2))
// Solving for Z
Z = sqrt(8*epsilon_0^2*c*h^3/(m*e^4*lambda*(1/n_1^2-1/n_2^2)))+b; // Atomic number unknown element
printf("\nThe atomic number unknown element = %2d", Z); 
// Result
// The atomic number unknown element = 42 