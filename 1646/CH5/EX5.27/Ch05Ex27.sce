// Scilab Code Ex5.27: Page:310 (2011)
clc;clear;
N = 4500;....// Number of lines in grating
n = 2;....// Order of diffraction
lambda1 = 5890;....// Wavelength, angstrom
lambda2 = 5896;....// Wavelength, angstrom
RP2 = n*N;    // Resolving power of grating in the second order
lambda = (lambda1+lambda2)/2;    // Mean wavelength of sodium light, angstrom
d_lambda = lambda2 - lambda1;    // Wavelength difference, angstrom
RP = lambda/d_lambda;    // Calculated resolving power of grating 
if RP2 <> RP then
    printf("\nThe D1 and D2 lines of Na light cannot be resolved in second order");
end

// Result
// The D1 and D2 lines of Na light cannot be resolved in second order 
