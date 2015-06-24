// Scilab Code Ex3.33:: Page-3.50 (2009)
clc; clear;
N = 12000;      // No. of lines on the grating per inch, lines/inch
a_plus_b = 2.54/N;      // Grating element, cm
n = 2;      // Order of diffraction spectra
theta = 39; // Angle of diffraction for maxima in second order, degrees
// But a_plus_b*sind(theta)=n*lambda, solving for lambda
lambda = a_plus_b*sind(theta)/n;     // Wavelength of light used, cm

printf("\nThe wavelength of light used in obtaining second order diffraction maximum = %4d angstrom", lambda/1e-008);

// Result 
// The wavelength of light used in obtaining second order diffraction maximum = 6660 angstrom 
