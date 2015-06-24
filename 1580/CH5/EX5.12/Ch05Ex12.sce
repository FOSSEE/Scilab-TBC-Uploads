// Scilab Code Ex5.12 : Page-5.25 (2004)
clc;clear;
h = 6.626e-34;  //  Planck's const in Js
m = 9.1e-31;  // Mass of the electron in kg
lam = 1.66e-10;   //  de Broglie wavelength, m
e = 1.6e-19;    // Charge on electron, C
v = h/(m*lam);    // Velocity of electron, m/s
E = (m*v^2)/(2*e);  //  Kinetic energy of the electron in eV

printf("\nVelocity of electron = %d km/s", v/1000);
printf("\nKinetic energy of the electron = %5.2f eV", E);

// Result 
//  Velocity of electron = 4386 km/s
//  Kinetic energy of the electron = 54.71 eV 
