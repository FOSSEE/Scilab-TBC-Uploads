// Scilab Code Ex3.34:: Page-3.51 (2009)
clc; clear;
lambda = 5890e-008;     // Wavelength of light used, cm
N = 6000;      // No. of lines on the grating per inch, lines/inch
a_plus_b = 2.54/N;      // Grating element, cm
theta_max = 90;     // Direction of maxima for maximum possible orders
// But a_plus_b*sind(theta_max)=n*lambda, solving for n
n = a_plus_b*sind(theta_max)/lambda;     // Number of visible orders

printf("\nThe number of visible orders using diffraction grating = %d", n);

// Result 
// The number of visible orders using diffraction grating = 7 
