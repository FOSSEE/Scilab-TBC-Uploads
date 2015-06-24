// Scilab Code Ex19.3: Page-960 (2011)
clc; clear;
d = 1e-003;    // Diameter of aluminium wire, m
r = d/2;       // Radius of aluminium wire, m
H_c = 7.9e+003;    // Critical magnetic field for Al, A/m
I_c = 2*3.14*r*H_c;    // Critical current through superconducting aluminium wire, A
printf("\nThe critical current through superconducting aluminium wire = %6.3f A", I_c);

// Result 
// The critical current through superconducting aluminium wire = 24.806 A 
