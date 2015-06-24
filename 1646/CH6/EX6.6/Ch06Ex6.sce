// Scilab Code Ex6.6: Page-371 (2011)
clc;clear;
lambda1 = 0.71;....// Wavelength of k alpha line in molybdenum, angstrom
Z1 = 42;        // Atomic number of Mo
Z2 = 29;        // Atomic number of Cu
// Wavelength of characteristic X-ray for K-alpha spectral line is given by 
// 1/lambda = 3/4*R*(Z-1)^2 then
lambda2 = lambda1*(Z1-1)^2/(Z2-1)^2;    // The wavelength of K alpha radiation in copper, m
printf("\nThe wavelength of K-alpha radiation in copper = %4.2f angstrom", lambda2);

// Result
// The wavelength of K-alpha radiation in copper = 1.52 angstrom 
