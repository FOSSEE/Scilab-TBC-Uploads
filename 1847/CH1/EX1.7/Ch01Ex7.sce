// Scilab Code Ex1.7: Page-1.6 (2009)
clc; clear;
m = 9.1e-031;      // Mass of the electron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
h = 6.626e-034;     // Planck's constant, Js
E = 20e+03*e;     // Energy of the electron, J
// As 1/2*m*v^2 = E, solving for v
v = sqrt(2*E/m);        // Velocity of the electron, m/s
lambda = h/(m*v);  // de Broglie wavelength of the electron, m
n = 1;  // First order diffraction
d = 9.8e-011;       // Atomic spacing for thin gold foil, m
// Using Bragg's equation, 2*d*sin(theta) = n*lambda and solving for theta
theta = asind(n*lambda/(2*d));      // Angle of deviation for first order diffraction maxima, degree
printf("\nThe angle of deviation for first order diffraction maxima = %4.2f degrees", theta);

// Result 
// The angle of deviation for first order diffraction maxima = 2.54 degrees 

