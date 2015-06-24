// Scilab Code Ex7.1: Page-376 (2008)
clc; clear;
a = poly(0, 'a');    // Lattice parameter for a cubic unit cell, m
// For simple cubic cell
n = 1;    // Number of atoms per simple cubic unit cell
r = a/2;    // Atomic radius for a simple cubic cell, m
f = pol2str(int(numer(n*4/3*%pi*r^3/a^3)*100));    // Atomic packing fraction for a simple cubic cell
printf("\nFor simple cubic cell, f = %s percent", f);
// For face centered cubic cell
n = 2;    // Number of atoms per face centered cubic unit cell
r = sqrt(3)/4*a;    // Atomic radius for a face centered cubic cell, m
f = pol2str(int(numer(n*4/3*%pi*r^3/a^3)*100));    // Atomic packing fraction for a face centered cubic cell
printf("\nFor face centered cubic cell, f = %s percent", f);
// For body centered cubic cell
n = 4;    // Number of atoms per body centered cubic unit cell
r = a/(2*sqrt(2));    // Atomic radius for a body centered cubic cell, m
f = pol2str(int(numer(n*4/3*%pi*r^3/a^3)*100));    // Atomic packing fraction for a body centered cubic cell
printf("\nFor body centered cubic cell, f = %s percent", f);

// Result
// For simple cubic cell, f =  52 percent
// For face centered cubic cell, f =  68 percent
// For body centered cubic cell, f =  74 percent 