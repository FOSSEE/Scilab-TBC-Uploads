// Scilab code Ex1.17:  Pg 22 (2008)
clc; clear;
l = 250;          // Length of Cu wire, metre
d = 5e-04;         // Diameter of Cu wire, metre
rho = 1.8e-08;       // Resistivity of Cu wire, ohm-metre
A = ( %pi*d^2 )/4;          // Cross sectional area of Cu wire, metre square
// Using relation R = rho*l/A
R = rho*l/A;          // Resistance, ohm
printf("\nThe resistance of the coil = %5.2f ohm", R)

// Result
// The resistance of the coil = 22.92 ohm
