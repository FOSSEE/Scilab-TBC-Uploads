// Scilab Code Ex5.1 : Page-5.7 (2004)
clc;clear;
h = 6.626e-34;  //  Planck's const in Js
m = 1.67e-27;  // Mass of the proton in kg
c = 3e+8;    //  Charge of electron in C
v = c/10;   //  Proton velocity 1/10th of c
E = 0.025;  //  Kinetic energy of the neutron in J
lam = h/(m*v);    // de Broglie wavelength in m
printf("\nde Broglie wavelength = %5.3e m", lam);

// Result 
// de Broglie wavelength = 1.323e-14 m 
