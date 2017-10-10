// Ex12_2 Page:244 (2014)
clc; clear;
I = 8;  // Current through the copper wire, A
d = 18e-03; // Diameter of the copper wire, m
V = 5;     // Potential difference across the wire, V
L = 1;  // Length of the copper wire, m
A = %pi*(d/2)^2;    // Area of cross-section of the wire, Sq.m
J = I/A;    // Current density in the wire, A/Sq.m
E = V/L;    // Electric field across the wire, V/m
rho = E/J;  // Resistivity of the material, ohm-m
printf("\nThe current density in the copper wire = %4.2e A/Sq.m", J);
printf("\nThe resistivity of the material = %4.2e ohm-m", rho);

// Result
// The current density in the copper wire = 3.14e+04 A/Sq.m
// The resistivity of the material = 1.59e-04 ohm-m 
// The answer provided in the textbook is wrong
