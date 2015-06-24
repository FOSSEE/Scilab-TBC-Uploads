// Scilab code Ex5.18: Pg:227 (2008)
clc;clear;
n = 2;    // Order of diffraction
Lambda = 6000e-08;    // Wavelength of light on the grating, cm
m = 16000;    // Number of lines per inch on grating
L = 5;    // Length of the ruled grating, inches
N = L*m;    // Total number of lines on the grating
// Since the resolving power, Lambda/d_Lambda = n*N, solving for d_Lambda
d_Lambda = Lambda/(n*N);    // The smallest wavelength difference, Angstorm 
printf("\nThe smallest wavelength difference in the second order = %6.4f angstrom",d_Lambda/1e-008);

// Result 
// The smallest wavelength difference in the second order = 0.0375 angstrom 