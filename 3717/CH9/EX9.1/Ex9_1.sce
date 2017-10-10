// Ex9_1 Page:172 (2014)
clc;clear;
d = 3.8626;    // The average spacing between adjacent rotational lines of CO molecule, per cm
B = d/2*100;    // Rotational constant, per m
h = 6.626e-034;    // Planck's constant, Js
c = 3e+08;    // Speed of light in vacuum, m/s
I = h/(8*%pi^2*B*c);    // Moment of inertia of the CO molecule, kg/Sq.m
N_A = 6.022e+023;    // Avogadro's number, atoms/mol
M_C = 0.012;    // Isotopic masses of C-12 atom, kg/mol
M_O = 0.016;    // Isotopic masses of Om-16 atom, kg/mol
mu = M_C*M_O/((M_C + M_O)*N_A);    // Reduced mass of CO molecule, kg
r = sqrt(I/mu);    // Bond length of CO, m
printf("\nThe bond length of CO = %5.3e m", r);

// Result
// The bond length of CO = 1.128e-010 m 
