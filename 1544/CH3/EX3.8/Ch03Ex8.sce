// Scilab code Ex3.8: Pg 87 (2008)
clc; clear;
V = 180;                            // Potential difference, V
d = 3e-03;                         // Thickness of dielectric, m
A = 4.2e-04;                       // Cross-sectional area of plates, m^2
Epsilon_r = 3.5;                   // Relative permittivity
Epsilon_0 = 8.854e-12;             // Permittivity of Free Space
// Since absolute permittivity, Epsilon = C*(d/A), therefore solving for C & putting Epsilon = Epsilon_0*Epsilon_r 
C = ( Epsilon_r*Epsilon_0*A )/d;         // Capacitance, F
// Since C = Q/V, solving for Q
Q = C*V;                                 // Electric charge, C
// Using  D = Q/A,
 D = Q/A;                                // Electric field density, C/m^2
 printf("\The flux thus produced = %3.2f nC.",Q/1e-09);
 printf("\nThe flux density thus produced. = %3.2f micro-coulomb-per-metre-square", D/1e-06); 
 
// Result
// The flux thus produced = 0.78 nC
// The flux density thus produced. = 1.86 micro-C/m^2
