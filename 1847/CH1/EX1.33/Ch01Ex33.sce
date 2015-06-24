// Scilab Code Ex1.33:: Page-1.46 (2009)
clc; clear;
h = 6.6e-034;    // Planck's constant, Js
m = 9.1e-031;   // Electronic mass, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
n = 1;     // For simplicity assume principle quantum number to be unity
l = 2.1e-010;   // Length of one dimensional potential box, m
E = h^2*n^2/(8*m*l^2);    // Energy of the electron, J

printf("\nThe energy of the electron moving in one dimensional infinitely high potential box = %4.2f n^2 eV", E/e);

// Result 
// The energy of the electron moving in one dimensional infinitely high potential box = 8.48 n^2 eV 
