// Scilab code Ex13.6: Pg 483 (2005)
clc; clear;
M = 11.0;   // Atomic mass of C-11 isotope, g
NA = 6.02e+023; // Avogadro's number
m = 3.50e-06;   // Given mass of Cabon-11, g

// Part (a)
N = m/M*NA;     // Number of C-11 atoms in 3.50 micro-g of sample
printf("\nThe number of C-11 atoms in %4.2f micro-g of sample = %4.2e nuclei", m/1e-06, N);

// Part (b)
T_half = 20.4*60;    // Half life of radioactive nucleus C-11, s
lambda = 0.693/T_half;  // Decay constant of C-11, per second
R0 = lambda*N; // Activity of sample at t = 0, decays/s
t = 8.00*60*60;   // Time during which the radioactive disintegration takes place, s
R = R0*exp(-1*lambda*t);  // Decay rate after 2.0e+003 years, decay/s

printf("\nThe activity of C-11 sample at t = 0 is %4.2e decays/s", R0);  
printf("\nThe activity of sample after %4.2f hours = %4.2e decays/s", t/3600, R);  

// Result
// The number of C-11 atoms in 3.50 micro-g of sample = 1.92e+17 nuclei
// The activity of C-11 sample at t = 0 is 1.08e+14 decays/s
// The activity of sample after 8.00 hours = 8.99e+06 decays/s 
