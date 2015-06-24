// Scilab code Ex3.4: Pg 83-84 (2008)
clc; clear;
d = 4e-03;                   // Thickness of air, m
Q = 2e-04;                  // Electric charge on plates, C
V = 125;                   // Supply voltage, V
D = 15;                   // Electric field density, coulomb-per-metre-square
// Part (a)
// Since electric field strength(E) = potential gradient, therefore we have 
E = V/d;                    // Electric field strength, V/m
// Part (b)
// Since D = Q/A, solving for A
A = Q/D;              // Cross-sectional area of plates, m^2
// Part (c)
// Since Q = C*V, solving for C
C = Q/V;                    // Capacitance of the plates, F
printf("\nThe electric field strength between the plates = %5.2f kV/m",E*1e-03);
printf("\nThe csa of the field between the plates = %4.1f mm^2", A/1e-06);
printf("\nThe capacitance of the plates = %3.1f micro-coulomb", C/1e-06);

// Result
// The electric field strength between the plates = 31.25 kV/m
// The csa of the field between the plates = 13.3 mm^2
// The capacitance of the plates = 1.6 micro-coulomb
