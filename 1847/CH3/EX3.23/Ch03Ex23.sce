// Scilab Code Ex3.23:: Page-3.45 (2009)
clc; clear;
lambda = 5500e-008;    // Wavelength of light used, cm
N = 15000;           // No. of lines per inch of grating, lines/inch
a_plus_b = 2.54/N;         // Grating element, cm
n = 1;      // Order of diffraction for principal maxima
// As (a+b)*sin(theta_n) = n*lambda and for maximum possible order of spectra sin(theta_n) = 1
// So (a+b) = n*lambda, solving for n
n = (a_plus_b)/lambda;   // The highest order spectrum which can be seen in monochromatic light

printf("\nThe highest order spectrum which can be seen in monochromatic light = %d", n);

// Result 
// The highest order spectrum which can be seen in monochromatic light = 3  
