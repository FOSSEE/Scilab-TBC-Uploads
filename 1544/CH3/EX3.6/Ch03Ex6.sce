// Scilab code Ex3.6: Pg 86 (2008)
clc; clear;
C = 0.224e-09;                    //Capacitance, F
A = 5625e-06;                     // Cross-sectional area of plates, m^2
Epsilon_r = 2.5;                  // Relative permittivity
Epsilon_0 = 8.854e-12;            // Permittivity of Free Space
// Since absolute permittivity, Epsilon = C*(d/A), therefore solving for d & putting Epsilon = Epsilon_0*Epsilon_r
d = ( Epsilon_r*Epsilon_0*A )/C;                  // Thickness of waxed paper dielectric, m
printf("\nThe thickness of paper required = %3.2f mm", d/1e-03);

// Result
// The thickness of paper required = 0.56 mm
