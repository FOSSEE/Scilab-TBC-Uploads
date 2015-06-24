// Scilab Code Ex5.29: Page-300 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
e = 1.602e-019;    // Energy equivalent of 1 eV, J
m = 9.11e-031;    // Rest mass of the electron, kg
l = 4e-010;    // Length of the force free region, m
n = 1;    // Principal quantum number for lowest energy state
E1 = n^2*h^2/(8*m*l^2);    // Lowest energy of an electron in one dimensional force free region, J
printf("\nThe lowest energy of an electron in one dimensional force free region = %4.2f eV", E1/e);

// Result
// The lowest energy of an electron in one dimensional force free region = 2.35 eV 