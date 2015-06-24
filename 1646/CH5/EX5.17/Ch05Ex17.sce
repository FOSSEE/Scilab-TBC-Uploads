// Scilab Code Ex5.17: Page:305 (2011)
clc;clear;
a = 1;    // For simplicity assume slit width to be unity, unit
theta = 1; // For simplicity assume diffraction angle to be unity, unit
// As a*sin(theta) = m*lambda, solving for lambdas
lambda1 = a*sin(theta);    // First wavelength, angstrom
lambda2 = a*sin(theta)/2;    // First wavelength, angstrom
printf("\nlambda1 = %d*lambda2", lambda1/lambda2);

// Result
// lambda1 = 2*lambda2 
