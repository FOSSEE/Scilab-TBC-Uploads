// Scilab Code Ex5.1: Page:297 (2011) 
clc;clear;
n1 = 10;....// Order of interference maximum for lambda = 7000 angstrom
lambda1 = 7000;....// Wavelength of the light, angstrom
lambda2 = 5000;....// Wavelength of the light, angstrom
// As W = D*lambda/(2*d) then, x = n1*D*lambda1/(2*d) = n2*D*lambda2/(2*d), solving for n2
n2 = n1*lambda1/lambda2;    // Order of interference maximum for lambda = 5000 angstrom
printf("\nThe order of interference maximum for wavelength of 5000 angstrom = %2d ", n2);

// Result
// The order of interference maximum for wavelength of 5000 angstrom = 14  
