// Scilab Code Ex3d.5: Page-207 (2008)
clc; clear;
N = 4250;    // Number of lines per cm of grating, lines/cm
a_plus_b = 1/N;    // Grating element, cm
n = 2;    // Order of diffraction
theta = 30;    // Angle of diffraction, degree
lambda = sind(theta)*a_plus_b/n;    // Wavelength of spectral line from diffraction condition, cm
printf("\nThe wavelength of spectral line from diffraction condition = %4d angstrom", lambda/1e-008);

// Result
// The wavelength of spectral line from diffraction condition = 5882 angstrom 