// Scilab code Ex3.18: Pg 101 (2008)
clc; clear;
V = 400;               // Supply voltage, V
E = 0.5e06;            // Dielectric strength, V/m
// Since E = V/d, solving for d
d = V/E;               // Thickness of dielectric, m
printf("\nThe minimum thickness of dielectric required = %3.1fmm", d/1e-03);

// Result
// The minimum thickness of dielectric required = 0.8 mm
