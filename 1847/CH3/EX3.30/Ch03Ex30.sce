// Scilab Code Ex3.30:: Page-3.49 (2009)
clc; clear;
lambda1 = 5890e-008;    // Wavelength of D1 line of Na, cm
lambda2 = 5896e-008;    // Wavelength of D2 line of Na, cm
d_lambda = lambda2-lambda1;      // Linear separation of two lines just seen as separate, cm
P = 500;        // Number of lines per cm on grating, lines/cm
n = 2;      // Order of diffraction
// As resolving power of grating, lambda/d_lambda = n*N, solving for N
N = lambda1/(d_lambda*n);    // No. of lines required per cm on grating, lines/cm
w = N/P;        // Least width of grating, cm

printf("\nThe least width of plane transmission grating = %5.3f cm", w);

// Result 
// The least width of plane transmission grating = 0.982 cm 
