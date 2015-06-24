// Scilab Code Ex3a.b.4: Page-140 (2008)
clc; clear;
m = 1;    // Mass of the suspended body, kg
s = 25;    // Stifness constant of the spring, N/m
r = poly(0, 'r');
// As f0/f_prime = 2/sqrt(3), solving for r
r = roots(4*(s/m-r^2/(4*m^2))-3*s/m);    // Damping factor, kg/sec
printf("\nThe damping factor of damped oscillations = %d kg/sec", r(1));

// Result
// The damping factor of damped oscillations = 5 kg/sec 