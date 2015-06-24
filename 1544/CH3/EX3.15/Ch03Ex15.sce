// Scilab code Ex3.15: Pg 97 (2008)
clc; clear;
N = 11;                       // Number of plates in a capacitor
r = 25e-03;                   // Radius of circular plate, m
A = (%pi*r^2);                // Cross - sectional area of plate, m^2
d = 5e-04;                    // Distance between plates, m
epsilon_r = 1;                // Relative permittivity for air
epsilon_o = 8.854e-12;        // Relative permittivity for free space
// Calculating the capacitance of the capacitor
C = ((epsilon_o)*(epsilon_r)*A*(N-1))/d;       // Capacitance, F
printf("\n The capacitance of the capacitor = %3.2f pF", C/1e-10);

// Result
// The capacitance of the capacitor = 3.48 pF
