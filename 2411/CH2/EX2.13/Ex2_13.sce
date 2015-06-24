// Scilab Code Ex2.13: Page-80 (2008)
clc; clear;
x = poly(0, 'x');
y = x^2-4;
F = [x*y (x^2 + y^2)];    // Force acting on the particle, N
x1 = 2;    // lower limit
x2 = 4;    // upper limit
dr = [derivat(x); derivat(y);];    // Infinitesimal displacement, m
dW = F*dr;    // Work done or infinitesimally small displcement, J
work_exp = sci2exp(dW);    // Convert the polynomial to the expression
W = integrate(work_exp, 'x', x1, x2);    // Total work done in moving the particle in a force field, J
printf("\nThe total work done in moving the particle in the x-y plane = %d J", W);

// Result 
// The total work done in moving the particle in the x-y plane = 732 J 