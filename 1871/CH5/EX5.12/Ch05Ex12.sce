// Scilab code Ex5.12: Pg:224 (2008)
clc;clear;
n = 2;    // Second order diffraction
N = 40000;    // Number of lines per inch on the diffraction grating
lambda_ratio = n*N;    // Resolving power of grating in second order where d_Lambda is the smallest wavelength difference between neighbouring lines
printf("\nThe resolving power of a grating in the second order = %d ", lambda_ratio);

// Result 
// The resolving power of a grating in the second order = 80000  