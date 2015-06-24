// Scilab Code Ex4.7a: Page-140 (2006)
clc; clear;
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Electronic charge, C
h = 6.626e-034; // Planck's constant, Js
E_F = 1.55;  // Fermi energy of Cu, eV
n = %pi/3*(8*m/h^2)^(3/2)*(E_F*e)^(3/2);    // Electronic concentration in cesium, electrons/cc
printf("\nThe electronic concentration in cesium = %5.3e electrons/cc", n);

// Result 
// The electronic concentration in cesium = 8.733e+027 electrons/cc
