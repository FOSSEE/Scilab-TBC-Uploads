// Scilab Code Ex2.12: Page-80 (2008)
clc; clear;
t = poly(0, 't');
x = t^2 + 1;
y = 2*t^2;
z = t^3;
F = [3*x*y -5*z 10*x];    // Force acting on the particle, N
t1 = 1;    // lower limit
t2 = 2;    // upper limit
dr = [derivat(x); derivat(y); derivat(z)];    // Infinitesimal displacement, m
dW = F*dr;    // Work done or infinitesimally small displcement, J
work_exp = sci2exp(dW);    // Convert the polynomial to the expression
W = integrate(work_exp, 't', t1, t2);    // Total work done in moving the particle in a force field, J
printf("\nThe total work done in moving the particle in a force field = %d J", W);

// Result 