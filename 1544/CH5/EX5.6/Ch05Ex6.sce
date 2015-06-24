// Scilab code Ex5.6: Pg 149 (2008)
clc; clear;
l = 2.2;                                 // Effective length of conductor, m
B =38e-06;                               // Flux density, T
theta = (%pi/2);                         // Angle, degrees
v = 800/36;                              // Velocity, m^2
e = B*l*v*sin(theta);                    // Induced emf, V
printf("\The emf induced in the axle = %4.2f mV", e/1e-03);

// Result
// The emf induced in the axle = 1.86 mV
