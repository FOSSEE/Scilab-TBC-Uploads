// Scilab Code Ex3b.3: Page-163 (2008)
clc; clear;
C = 40;    // Critical angle for glass to air
mu = 1/sind(C);    // Refractive index of glass w.r.t. air
i_p = atand(mu);    // Polarizing angle for glass, degree
printf("\nThe polarizing angle for glass = %4.1f degree", i_p);

// Result
// The polarizing angle for glass = 57.3 degree 