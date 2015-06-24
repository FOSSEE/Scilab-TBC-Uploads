// Scilab Code Ex3.5: Page-89 (2006)
clc; clear;
k = 1.38e-023;  // Boltzmann constant, J/K
theta_D = 1440;        // Debye temperature for Be, K
h = 6.626e-034;     // Planck's constant, Js
f_D = k*theta_D/h;      // Debye cut off frequency of Be, Hz
printf("\nThe Debye cut off frequency of Be = %g per sec", f_D);

// Result 
// The Debye cut off frequency of Be = 2.99909e+013 per sec 
