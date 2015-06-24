// Scilab Code Ex4.12a: Page-142 (2006)
clc; clear;
m = 9.1e-031;   // Mass of the electron, kg
e = 1.6e-019;   // Energy equivalent of 1 eV, J/eV
r = 1.28e-010;   // Atomic radius of Cu, m
a = 4*r/sqrt(2);    // Lattice constant of Cu, m
tau = 2.7e-14;      // Relaxation time for the electron in Cu, s
V = a^3;    // Volume of the cell, metre cube
n = 4/V;    // Concentration of free electrons in monovalent copper, 
sigma = n*e^2*tau/m;    // Electrical conductivity of monovalent copper, mho per m
printf("\nThe electrical conductivity of monovalent copper = %5.3e mho per cm", sigma/100);

// Result 
// The electrical conductivity of monovalent copper = 6.403e+005 mho per cm 
