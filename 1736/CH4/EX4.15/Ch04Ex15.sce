// Scilab Code Ex4.15: Page-131 (2006)
clc; clear;
e = 1.6e-019;   // Electronic charge, C
a = 0.428e-09;  // Lattice constant of Na, m
V = a^3;    // Volume of unit cell, metre cube
N = 2;  // No. of atoms per unit cell of Na
n = N/V;    // No. of electrons per metre cube, per metre cube
R_H = -1/(n*e);  // Hall coeffcient of Na, metre cube per coulomb
printf("\nThe Hall coefficient of sodium = %4.2e metre cube per coulomb", R_H);

// Result 
// The Hall coefficient of sodium = -2.45e-010 metre cube per coulomb   

