// Scilab Code Ex5.13 : Page-195 (2014)
clc; clear;
n = [1 2 3];    // First three energy levels
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
c = 3e008;    // Speed of light, m/s
h = 6.63e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of the proton, kg
l = 0.1;    // Length of one-dimensional box, nm
E_n = n^2*(h*c/(e*1e-009))^2/(8*m*c^2/e*l^2);    // Energy of nth level, eV
printf("\nThe first three energy level are:\nE1 = %2.0f eV, E2 = %3.0f eV and E3 = %3.0f eV", E_n(1), E_n(2), E_n(3));

// Result
// The first three energy level are:
// E1 = 38 eV, E2 = 151 eV and E3 = 340 eV 