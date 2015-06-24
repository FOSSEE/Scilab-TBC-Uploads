// Scilab Code Ex1.34:: Page-1.46 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;   // Electronic mass, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
n = 1;     // The lowest energy state of electron
l = 3.5e-010;   // Length of one dimensional potential box, m
E = h^2*n^2/(8*m*l^2);    // Energy of the electron in the lowest state, J

printf("\nThe lowest energy of the electron in a one dimensional force free region = %1d eV", E/e);

// Result 
// The lowest energy of an electron in a one dimensional force free region = 3 eV
