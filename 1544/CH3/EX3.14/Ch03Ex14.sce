// Scilab code Ex3.14: Pg 96-97 (2008)
clc; clear;
N = 9;                      // Number of plates in a capacitor
A = 1200e-06;               // Cross - sectional area of plate, m^2
C = 3e-10;                  // Capacitance, F
epsilon_r = 5;              // Relative permittivity for mica
epsilon_o = 8.854e-12;      // Relative permittivity for free space
// Using the formula of capacitance, C = ((epsilon_o)*(epsilon_r)*A*(N-1))/d and solving for d, we have
d = ((epsilon_o)*(epsilon_r)*A*(N-1))/C;        // Distance between plates, m
printf("\nThe thickness of mica between parallel plates of a capacitor = %4.2f mm", d/1e-03);

// Result
// The thickness of mica between parallel plates of a capacitor = 1.42 mm 
