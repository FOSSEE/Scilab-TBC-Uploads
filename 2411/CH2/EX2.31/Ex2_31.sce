// Scilab Code Ex2.31: Page-93 (2008)
clc; clear;
E = [3 4 8];    // Coefficients of i, j and k in the electric field, N/C
S = [0; 0; 100];    // Coefficients of i, j and k in the area vector, Sq. m
phi_E = E*S;    // Electric flux through the surface, N-Sq.m/C
printf("\nThe electric flux through the surface = %d N-Sq.m/C", phi_E);

// Result 
// The electric flux through the surface = 800 N-Sq.m/C 