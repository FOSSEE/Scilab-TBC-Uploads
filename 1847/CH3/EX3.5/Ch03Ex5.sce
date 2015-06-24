// Scilab Code Ex3.5:: Page-3.22 (2009)
clc; clear;
lambda = 5000e-008;     // Wavelength of light used, cm
a = 15e-005;    // Width of the slit, cm
n = 1;      // Order of diffraction
// For a single slit Fraunhofer diffraction, a*sin(theta) = n*lambda, solving for theta
theta = asin(n*lambda/a);  // Half angular width at central maximum in Fraunhoffer diffraction, radian

printf("\nThe half angular width at central maximum in Fraunhoffer diffraction = %5.3f rad", theta);

// Result 
// The half angular width at central maximum in Fraunhoffer diffraction= 0.340 rad 
