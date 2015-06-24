// Scilab Code Ex5.3 : Page-5.8 (2004)
clc;clear;
h = 6.626e-34;  //  Planck's const in Js
m = 1.67e-27;  // Mass of the neutron in kg
e = 1.6e-19;    //  charge of electron in C
E = 0.025;  //  kinetic energy of the neutron in J
lam = h/(sqrt(2*m*E*e));    // de Broglie wavelength in m
printf("\nde Broglie wavelength = %5.3f nm", lam/1e-9);

// Result 
// de Broglie wavelength = 0.181 nm 
