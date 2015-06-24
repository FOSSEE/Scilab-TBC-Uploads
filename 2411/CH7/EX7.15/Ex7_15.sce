// Scilab Code Ex7.15: Page-382 (2008)
clc; clear;
e = 1.6e-019;    // The energy equivalent of 1 eV, J
c = 3e+008;    // Speed of light in vacuum, m/s
lambda = 0.5e-010;    // Wavelength of X rays, m
theta = 5;    // Bragg's angle, degree
n = 1;    // Order of diffraction
d = n*lambda/(2*sind(theta)*1e-010);    // Interplanar spacing, angstrom
n = 2;    // Ordr of diffraction
theta1 = asind(n*lambda/(2*d*1e-010));    // Angle at which the second maximum occur, degree
printf("\nThe spacing between adjacent planes of the crystal = %4.2f angstrom", d);
printf("\nThe angle at which the second maximum occur = %5.2f degree", theta1);

// Result
// The spacing between adjacent planes of the crystal = 2.87 angstrom
// The angle at which the second maximum occur = 10.04 degree 