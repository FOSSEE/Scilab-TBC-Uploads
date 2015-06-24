// Scilab Code Ex3.18:: Page-3.30 (2009)
clc; clear;
a = 0.019e-003;     // Width of each slit, m
b = 2.0e-004;       // Width of opacity between two slits, m
lambda = 5000e-010; // Wavelengh of light used, m
D = 0.6;        // Distance between slit and the screen, m
// As angular separation, theta = x/D = lambda/(a+b), solving for x
x = D*lambda/(a+b);     // Fringe spacing on the screen, m
// As half angular separation, theta1 = x1/D = lambda/(2*(a+b)), solving for x1
x1 = D*lambda/(2*(a+b));       // Distance between central maxima and first minima, m

printf("\nThe fringe spacing on the screen = %4.2f mm", x/1e-003);
printf("\nThe distance between central maxima and first minima = %4.2f mm", x1/1e-003);

// Result 
// The fringe spacing on the screen = 1.37 mm
// The distance between central maxima and first minima = 0.68 mm 
