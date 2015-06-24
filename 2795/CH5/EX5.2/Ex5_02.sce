// Scilab Code Ex5.2 : Page-168 (2013)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light, m/s
// For a moving ball
m = 0.057;    // Mass of the ball, kg
v = 25;    // Velocity of ball, m/s
p = m*v;    // Momentum of the ball, kgm/s
lambda = h/p;    // Lambda is the wavelength of ball, nm
printf("\nThe wavelength of ball = %3.1e m", lambda);
// For a moving electron
m = 0.511e+006;    // Rest mass of an electron, eV
K = 50;    // Kinetic energy of the electron, eV
p = sqrt(2*m*K);    // Momentum of the electron, kgm/s
lambda = h*c/(1.602e-019*p*1e-009);    // Wavelength of the electron, nm
printf("\nThe wavelength of the electron = %4.2f nm", lambda);

// Result
// The wavelength of ball = 4.7e-034 m
// The wavelength of the electron = 0.17 nm 
