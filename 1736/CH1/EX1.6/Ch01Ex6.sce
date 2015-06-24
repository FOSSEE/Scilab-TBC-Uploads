// Scilab Code Ex 1.6 : Page-18 (2006)
clc; clear;
r = 1.33;       // Ionic radii of K+ ion, angstrom
R = 1.81;     // Ionic radii of Cl- ion, angstrom
n = 4;    // No. of atoms per unit cell for an fcc lattice of NaCl crystal
APF = (n*(4*%pi*r^3/3)+n*(4*%pi*R^3/3))/(2*r+2*R)^3;    // Atomic packing factor of fcc KCl
printf("\nThe ionic packing factor of fcc KCl = %4.2f", APF);

// Result 
// The ionic packing factor of fcc KCl = 0.56 

