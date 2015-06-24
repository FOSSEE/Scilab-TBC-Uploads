// Scilab code Ex13.1: Pg 466 (2005)
clc; clear;
M = 0.012;  // Atomic mass of carbon, kg
N_A = 6.02e+023; // Avogadro's number
m = M/N_A;   // Mass of one Carbon-12 atom, kg
// As m = 12*u, twelve mass units, solving for u
u = m/12;   // The atomic mass unit, kg
printf("\nThe atomic mass unit = %4.2e kg", u);

// Result
// The atomic mass unit = 1.66e-27 kg 
