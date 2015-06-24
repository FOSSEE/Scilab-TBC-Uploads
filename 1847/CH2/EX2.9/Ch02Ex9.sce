// Scilab Code Ex2.9:: Page-2.12 (2009)
clc; clear;
n1 = 69;    // Number of interference fringes obtained with yellow wavelength
lambda1 = 5893e-008;    // Wavelength of yellow light used, cm
lambda2 = 5461e-008;    // Wavelength of green light used, cm
// As n*lambda = l*d/D = constant, therefore
n2 = n1*lambda1/lambda2;    // Number of interference fringes for green wavelength

printf("\nThe number of interference fringes for changed wavelength = %2d", ceil(n2));

// Result
// The number of interference fringes for changed wavelength = 75 
