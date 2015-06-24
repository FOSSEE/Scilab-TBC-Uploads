// Scilab Code Ex4.3: Page-112 (2006)
clc; clear;
m = 9.1e-031;   // Mass of an electron, kg
e = 1.6e-019;   // Charge on an electron, C
r = 1.28e-010;  // Atomic radius of cupper, m
a = 4*r/sqrt(2);    // Lattice parameter of fcc structure of Cu, m
V = a^3;    // Volume of unit cell of Cu, metre cube
n = 4/V;    // Number of atoms per unit volume of Cu, per metre cube
tau = 2.7e-04;  // Relaxation time for an electron in monovalent Cu, s
sigma = n*e^2*tau/m;    // Electrical conductivity of Cu, mho per cm
printf("\nThe free electron density in monovalent Cu = %5.3e per metre cube", n);
printf("\nThe electrical conductivity of monovalent Cu = %5.3e mho per cm", sigma);

// Result 
// The free electron density in monovalent Cu = 8.429e+028 per metre cube
// The electrical conductivity of monovalent Cu = 6.403e+017 mho per cm 

