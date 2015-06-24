// Scilab Code Ex1.16: Page-1.18 (2009)
clc; clear;
h = 6.6e-034;     // Planck's constant
m = 9.1e-031;      // Mass of a electron, kg
e = 1.6e-019;       // Electronic charge, C
V = 100;   // Accelerating potential for electron, V
E = e*V;    // Energy of the electron, J
lambda = h/sqrt(2*m*E); // de-Broglie wavelength of electron, m
printf("\nde-Broglie wavelength of electron accelerated at %d volts = %6.4e m", V, lambda);

// Result 
// de-Broglie wavelength of electron accelerated at 100 volts = 1.2231e-10 m 
