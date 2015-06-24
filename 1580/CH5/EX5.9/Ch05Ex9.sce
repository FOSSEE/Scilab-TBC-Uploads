// Scilab Code Ex5.9 : Page-5.23 (2004)
clc;clear;
h = 6.626e-34;  //  Planck's const in Js
m = 9.1e-31;  // Mass of the neutron in kg
e = 1.6e-19;    //  Charge of electron in C
E = 2000;  //  Kinetic energy of the neutron in eV
lam = h/(sqrt(2*m*E*e));    // de Broglie wavelength in m
printf("\nde Broglie wavelength of electron = %6.4f nm", lam/1e-9);

// Result 
// de Broglie wavelength of electron = 0.0275 nm 
