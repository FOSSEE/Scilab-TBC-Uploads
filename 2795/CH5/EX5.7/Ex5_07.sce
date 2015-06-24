// Scilab Code Ex5.7 :Page-184 (2013)
clc; clear;
h = 6.626e-34;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
e = 1.602e-019;    // Energy equivalent of 1 eV, J/ev
d = 2000;    // Distance between slit centres, nm
K = 50e+003;    // Kinetic energy of electrons, eV
l = 350e+006;    // Distance of screen from the slits, nm
lambda = 1.226/sqrt(K);    // Non-relativistic value of de Broglie wavelength of the electrons, nm
E0 = 0.511e+006;    // Rest energy of the electron, J
E = K + E0;    // Total energy of the electron, J
p_c = sqrt(E^2 - E0^2);    // Relativistic mass energy relation, eV
lambda_r = h*c/(p_c*e*1e-009);    // Relativistic value of de Broglie wavelength, nm
percent_d = (lambda - lambda_r)/lambda*100;    // Percentage decrease in relativistic value relative to non-relavistic value
sin_theta = lambda_r/d;    // Bragg's law
y = l*sin_theta;    // The distance of first maximum from the screen, nm
printf("\nThe percentage decrease in relativistic value relative to non-relavistic value = %1.0f percent", percent_d);
printf("\nThe distance between first two maxima = %3.0f nm", y);

// Result
// The percentage decrease in relativistic value relative to non-relavistic value = 2 percent
// The distance between first two maxima = 938 nm
