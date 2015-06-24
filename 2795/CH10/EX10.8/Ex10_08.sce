// Scilab Code Ex10.8 : Page-382 (2014)
clc; clear;
r = 1e-002;    // Radius of the loop, m
phi0 = 2.068e-015;    // Magnetic flux penetrating to the loop, T-Sq.m
A = %pi*r^2;    // Area of the loop, Sq.m
B = phi0/A;    // Magnetic field perpendicular to the loop, T
printf("\nThe magnetic field perpendicular to the loop = %4.2e T", B);

// Result
// The magnetic field perpendicular to the loop = 6.58e-012 T 