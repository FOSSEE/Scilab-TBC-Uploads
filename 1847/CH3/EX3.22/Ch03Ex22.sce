// Scilab Code Ex3.22:: Page-3.45 (2009)
clc; clear;
lambda1 = 5890e-008;    // Wavelength of D1 line of Na, cm
lambda2 = 5896e-008;    // Wavelength of D2 line of Na, cm
N = 3000/0.5;           // No. of lines per cm of grating, lines/cm
a_plus_b = 1/N;         // Grating element, cm
n = 1;      // Order of diffraction for principal maxima
// As (a+b)*sin(theta1) = n*lambda, solving for theta1
theta1 = asind(n*lambda1/(a_plus_b)); // Angle of diffraction for the principal maxima of D1 line, degrees
theta2 = asind(n*lambda2/(a_plus_b)); // Angle of diffraction for the principal maxima of D2 line, degrees
printf("\nThe angle of diffraction for the principal maxima of D1 line = %5.2f degrees", theta1);
printf("\nThe angle of diffraction for the principal maxima of D2 line = %5.2f degrees", theta2);

// Result 
// The angle of diffraction for the principal maxima of D1 line = 20.70 degrees
// The angle of diffraction for the principal maxima of D2 line = 20.72 degrees 
