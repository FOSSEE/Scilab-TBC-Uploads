// Scilab Code Ex1.14: Page-1.18 (2009)
clc; clear;
theta = 70;     // Glancing angle at which reflection occurs, degrees
h = 6.626e-034;     // Planck's constant
m = 9.1e-031;      // Mass of a electron, kg
e = 1.6e-019;       // Electronic charge, C
V = 1000;   // Accelerating potential, V
n = 1;      // Order of diffraction
E = e*V;    // Energy of the electron, J
lambda = h/sqrt(2*m*E); // de-Broglie wavelength of electron, m
// From Bragg's law, 2*d*sin(theta) = n*lambda, solving for d
d = n*lambda/(2*sind(theta));   // Interplanar spacing, m
printf("\nThe interplanar spacing of the crystal = %6.4e m", d);

// Result 
// The interplanar spacing of the crystal = 2.0660e-11 m 

