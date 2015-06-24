// Scilab Code Ex7.3: Page-411 (2011)
clc;clear;
a = 4e-003;....// Coherence width of laser source, m
lambda = 6e-007;....// Wavelength of the pulse, m
D = 100;....// Distance of the surface from laser source, m
A = 2*lambda/a;    // Angular spread of laser beam, radian
printf("\nThe angular spread = %1.0e radian", A);
theta = A/2;    // Semi angle, radian
A_s = %pi*(D*theta)^2;....// Areal spread of laser beam, Sq.m
printf("\nThe areal spread = %1.0e Sq.m", A_s);

// Result
// The angular spread = 3e-004 radian
// The areal spread = 7e-004 Sq.m 