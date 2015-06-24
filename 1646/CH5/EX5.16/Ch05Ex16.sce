// Scilab Code Ex5.16: Page:304 (2011)
clc;clear;
lambda = 6.328e-007;....// Wavelength of monochromatic light from He laser, m
n1 = 1;....// First order 
n2 = 2;....// Second order
l = 6000;....// Lines/cm of the diffraction grating
A= 1.66e-6;
theta = asind(n1*lambda/A);
printf("\n The first order maximum angle = %4.1f degrees",theta);
theta = asind(n2*lambda/A);
printf("\n The second order maximum angle = %4.1f degrees",theta);

// Result
// The first order maximum angle = 22.4 degrees
// The second order maximum angle = 49.7 degrees 
