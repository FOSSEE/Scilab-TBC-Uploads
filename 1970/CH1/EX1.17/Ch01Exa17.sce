// Scilab code Ex1.17 :  : Page 57 (2011)
clc; clear;
b = 1;  // For simplicity assume minor axis length to be unity, unit
a = 10/100+b;   // Major axis length, unit
A = 125;    // Mass number of medium nucleus
r = 0.53e-010;  // Bohr's radius, m
eps = (a-b)/(0.5*a+b);  // Deformation parameter
R = 1.2e-015*A^(1/3);    // Radius of the nucleus, m
Q = 1.22/15*R^2   // Electric Quadrupole moment, metre square
V_rel_err = Q/r^2;      // Relative error in the potential
printf("\nThe relative error in the electric potential at the first Bohr radius : %e", V_rel_err);

// Result
// The relative error in the electric potential at the first Bohr radius : 1.042364e-09 
