// Scilab Code Ex10.5 :Page-364 (2014)
clc; clear;
e = 1.602e-019;    // Charge on an electron, C
r = 5.29e-011;    // Orbital radius of electron equal to Bohr radius, m
B = 2.0;    // Applied magnetic field, T
m = 9.11e-031;    // Mass of an electron, kg
delta_mu = e^2*r^2*B/(4*m);    // Induced diamagnetic moment in the atom, J/T
printf("\nThe induced diamagnetic moment in the atom = %3.1e J/T", delta_mu);

// Result
// The induced diamagnetic moment in the atom = 3.9e-029 J/T 
