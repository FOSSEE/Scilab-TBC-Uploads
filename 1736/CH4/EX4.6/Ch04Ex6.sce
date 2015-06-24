// Scilab Code Ex4.6: Page-121 (2006)
clc; clear;
h = 6.625e-034; // Planck's constant, Js
h_cross = h/(2*%pi);    // Reduced Planck's constant, Js
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
a = 5.34e-010;      // Lattice constant of monovalent bcc lattice, m
V = a^3;    // Volume of bcc unit cell, metre cube
n = 2/V;    // Number of atoms per metre cube
E_F = h_cross^2/(2*m*e)*(3*%pi^2*n)^(2/3);    // Fermi energy of monovalent bcc solid, eV

printf("\nThe Fermi energy of a monovalent bcc solid = %5.3f eV", E_F);

// Result 
// The Fermi energy of a monovalent bcc solid = 2.034 

