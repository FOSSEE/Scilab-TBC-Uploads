// Scilab Code Ex1.12: Page-1.17 (2009)
clc; clear;
m = 9.1e-031;      // Mass of the electron, kg
q = 1.6e-019;       // Charge on an electron, C
V = 50;     // Accelearting potential, V
E = q*V;    // Energy gained by the electron, J
h = 6.626e-034;     // Planck's constant, Js
lambda = h/sqrt(2*m*E);  // de Broglie wavelength of the electron, m
printf("\nThe de Broglie wavelength of the electron accelearted through a given potential = %5.3e m", lambda);

// Result 
// The de Broglie wavelength of the electron accelearted through a given potential = 1.736e-10 m 

