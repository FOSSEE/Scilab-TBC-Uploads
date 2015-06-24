// Scilab code Ex3.19: Pg 101-102 (2008)
clc; clear;
C = 270e-12;              // Capacitance, F
A = 60e-04;               // Cross-sectional area of plate, m^2
E = 350e03;               // Dielectric strength, V/m
epsilon_r = 2.1;           // Relative pemittivity
epsilon_o = 8.854e-12;     // Permittivity of free space
// Part (a)
// Since formula for capacitance, C = ((epsilon_o)*(eplison_r)*A)/d, solving for d
d = ((epsilon_o)*(epsilon_r)*A)/C;      // Thickness of dielectric, m
// Part (b)
// Since E = V/d, solving for V
V = E*d;                                  // Maximum possible working voltage, V
printf("\nThe thickness of Teflon sheet required = %5.4f mm", d/1e-03);
printf("\nThe maximum possible working voltage for the capacitor = %5.1f V", V);

// Result
// The thickness of Teflon sheet required = 0.413 mm
// The maximum possible working voltage for the capacitor = 144.6 V
