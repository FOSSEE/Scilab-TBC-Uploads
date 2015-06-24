// Scilab code Ex3.5: Pg 86 (2008)
clc; clear;
A = 6e-04;                          // Cross-sectional area of plates, m^2
d = 5e-04;                          // Thickness of mica sheet, m
Epsilon_r = 5.8;                    // Relative permittivity, unitless
Epsilon_0 = 8.854e-12;              // Permittivity of Free Space
V = 200;                            // Potential difference, V
// Part (a)
// Since absolute permittivity, Epsilon = C*(d/A), therefore solving for d & putting Epsilon = Epsilon_0*Epsilon_r 
C = ( Epsilon_r*Epsilon_0*A )/d;         // Capacitance, F
// Part (b)
// Since electric field strength(E) = potential gradient, therefore we have 
E = V/d;                    // Electric field strength, V/m
printf("\nThe capacitance of the capacitor = %5.2f pF", C/1e-12);
printf("\nElectric field strength = %3d kV/m",E*1e-03);

// Result
// The capacitance of the capacitor = 61.62 pF
// Electric field strength = 400 kV/m
