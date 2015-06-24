// Scilab code Ex3.7: Pg 86 (2008)
clc; clear;
C = 4.7e-08;                   //Capacitance, F
A = 4e-04;                   // Cross-sectional area of plates, m^2
d = 1e-04;                  // Thickness of dielectric, m
Epsilon_0 = 8.854e-12;            // Permittivity of Free Space
// Since absolute permittivity, Epsilon = C*(d/A), therefore solving for Epsilon_r & putting Epsilon = Epsilon_0*Epsilon_r
Epsilon_r = (C*d)/(Epsilon_0*A);                  // Relative permittivity
printf("\nRelative permittivity = %4d", Epsilon_r);

// Result
// Relative permittivity = 1327
