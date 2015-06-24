// Scilab Code Ex3.11:: Page-3.25 (2009)
clc; clear;
lambda = 5500e-008;     // Wavelength of light used, cm
a = 8.5e-005;    // Width of the slit, cm
n = 1;      // Order of diffraction
// For a single slit Fraunhofer diffraction, a*sind(theta) = n*lambda, solving for theta
theta = asind(n*lambda/a);  // Half angular width at central maximum in Fraunhoffer diffraction, degrees

printf("\nThe half angular width at central maximum in Fraunhoffer diffraction = %4.1f degrees", theta);

// Result 
// The half angular width at central maximum in Fraunhoffer diffraction = 40.3 degrees 
