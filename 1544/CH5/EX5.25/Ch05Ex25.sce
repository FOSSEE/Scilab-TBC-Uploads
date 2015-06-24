// Scilab code Ex5.25:  Pg 183 (2008)
clc; clear;
N = 400;                                 // Number of turns in a coil
l = 0.25;                                // Effective length of coil, m
A = 4.5e-04;                             // Cross-sectional area, m^2
mew_r = 180;                             // Relative permeability 
mew_o = 4*(%pi)*1e-07;                   // Pemeability for free space
L = (mew_o*mew_r*(N^2)*A)/l          // Self-inductance of coil, H
printf("\nThe self inductance of the coil = %2d milli-henry", L/1e-03);

// Result
// The self inductance of the coil = 65 mH
