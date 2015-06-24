// Scilab Code 5.23: Page:307 (2011)
clc;clear;
lambda1 = 6000;....// Wavelength of yellow line, angstrom
lambda2 = 4800;....// Wavelength of blue line, angstrom
theta = asin(3/4);    // Angle of diffraction, radian
// As a_plus_b*sin_theta) = n*lambda, so n*lambda1 = (n+1)*lambda2, solving for n
n = poly(0, 'n');
n = roots(n*6000 - (n+1)*4800);    // Order of diffraction
a_plus_b = n*6000/sin(theta);    // Grating element of diffraction grating, m
printf("\nThe Grating element of diffraction grating = %3.1e m", a_plus_b*1e-010);

// Result
// The Grating element of diffraction grating = 3.2e-006 m 
