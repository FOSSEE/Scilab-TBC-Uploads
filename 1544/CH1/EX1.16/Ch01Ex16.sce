// Scilab code Ex1.16: Pg 22 (2008)
clc; clear;
l = 200;          // Length of Cu wire, metre
rho = 2e-08;       // Resistivity of Cu, ohm-metre
A = 8e-07;          // Cross sectional area of Cu wire, metre square
// Using relation R = ( rho*l )/A
R = ( rho*l )/A;          // Resistance, ohm
printf("\nThe resistance of the coil = %1d ohm", R)

// Result
// The resistance of the coil = 5 ohm
