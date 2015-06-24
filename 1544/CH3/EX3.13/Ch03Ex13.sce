// Scilab code Ex3.13: Pg 96 (2008)
clc; clear;
N = 20;                  // Number of plates in a capacitor
A = 6400e-06;            // Cross - sectional area of plate, m^2
d = 1.5e-03;             // Distance between plates, m
epsilon_r = 6.4;         // Relative permittivity for mica
epsilon_o = 8.854e-12;     // Relative permittivity for free space
// Calculating the capacitance of the capacitor
C = ((epsilon_o)*(epsilon_r)*A*(N-1))/d;       // Capacitance, F
printf("\n The capacitance of the capacitor = %3.1f nF", C/1e-09);

// Result
// The capacitance of the capacitor = 4.6 nF
