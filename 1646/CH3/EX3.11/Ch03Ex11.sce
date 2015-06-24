// Scilab Code Ex3.11: Page:138 (2011) 
clc;clear;
r = 1.86e-10;....// Radius of Na, angstrom
m = 9.1e-31;....// Mass of electron,in kg
h = 6.62e-34;....// Planck's constant, J-s
N = 2;....// Number of free electrons in a unit cell of Na
a = 4*r/sqrt(3);....// Volume of Na, m
V = a^3;....// Volume of the unit cell of Na, meter cube
E = h^2/(2*m)*(3*N/(8*%pi*V))^(2/3);
printf("\nThe fermi energy of the Na at absolute zero is = %4.2e J", E);

// Result
// The fermi energy of the Na at absolute zero = 5.02e-019 J 