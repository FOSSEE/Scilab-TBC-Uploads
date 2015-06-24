// Scilab Code Ex2.32: Page-93 (2008)
clc; clear;
E = [8 4 3];    // Coefficients of i, j and k in the electric field, N/C
S = [0; 0; 100];    // Coefficients of i, j and k in the area vector, Sq. m
phi_E = E*S;    // Electric flux through the surface, N-Sq.m/C
printf("\nThe electric flux through the area in XY plane = %d N-Sq.m/C", phi_E);

// Result 
// The electric flux through the area in XY plane = 300 N-Sq.m/C 