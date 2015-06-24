// Scilab code Ex3.3: Pg 83 (2008)
clc; clear;
d = 3e-03;                  // Thickness of dielectric, m
Q = 35e-03;                 // Electric charge on plates, C
V = 150;                   // Supply voltage, V
A = 144e-06;              // Cross-sectional area of plates, m^2
// Part (a)
// Since electric field strength(E) = potential gradient therefore we have
E = V/d;                    // Electric field strength, V/m
// Part (b)
// Solving for electric field density, D
D = Q/A;                      // Electric field density, C/m^2
printf("\nThe electric field strength = %2d kV/m", E*1e-03);
printf("\nThe flux density = %5.1f C/m^2", D);

// Result
// The electric field strength = 50 kV/m
// The flux density = 243.1 C/m^2
