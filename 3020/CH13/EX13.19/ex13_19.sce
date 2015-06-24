clc;
clear all;
at = 63.5e-3; // Atomic weight of copper in Kg
N = 6.022e26; // Avagadro constant
r = 1.273e-10; // Atomic radius for FCC in meters
n = 4;// Number of atoms per unit cell in FCC
a = (4*r)/sqrt(2); // Lattice parameter for FCC
rho = (n*at)/(N*a^3); //Density of material
disp('gm/m^3',rho,'The density of copper is')
// Slight variation in answer than textbook
