// Scilab Code Ex5.9 : Page-188 (2013)
clc; clear;
a_0 = 5.29e-11;    // Radius of H-atom, m
l = 2*a_0;    // Length, m
h = 6.63e-34;    // Planck's constant, Js
m = 9.1e-31;    // Mass of electron, kg
K_min = h^2/(8*(%pi)^2*m*l^2);    // Minimum kinetic energy possesed, J
printf("\nThe minimum kinetic energy of the electron = %3.1f eV", K_min/1.6e-19);

// Result
// The minimum kinetic energy of the electron = 3.4 eV
