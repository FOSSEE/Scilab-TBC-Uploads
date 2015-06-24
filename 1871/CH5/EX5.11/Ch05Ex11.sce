// Scilab code Ex5.11: Pg:219 (2008)
clc;clear;
Lambda_1 = 5000e-08;    // First wavelength of spectral line, cm
Lambda_2 = 5200e-08;    // Second wavelength of spectral line, cm
aplusb = 1/10000;    // Grating element where a is the width of slit and b is the width of opaque region in a grating, cm
f = 150;    // Focal length of the lens, cm
n = 1;    // Order of diffractions
// Since (a +b)*sin_theta = n*Lambda
theta_1 = asind(n*Lambda_1/aplusb);    // Angle of diffraction for the first order with first wavelength, degree
theta_2 = asind(n*Lambda_2/aplusb);    // Angle of diffraction for the first order with second wavelength, degree
x_1 = tand(theta_1)*f;    // Position of first spectral line in the first order spectrum, cm
x_2 = tand(theta_2)*f;    // Position of second spectral line in the first order spectrum, cm
d_x = x_2 - x_1;    // Separation between two spectral lines in the first order spectrum, cm
printf("\nThe separation between two spectral lines in the first order spectrum  = %4.2f cm", d_x);

// Result 
// The separation between two spectral lines in the first order spectrum  = 4.71 cm