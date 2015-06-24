// Scilab Code Ex4.6: Page-237 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
v = 0.8*c;    // Speed of the first spaceship, m/s
u_prime = 0.9*c;    // Speed of the second spaceship, m/s
u = (u_prime+v)/(1+u_prime*v/c^2);    // Relative speed of the ships as measured by the observer on either one from Velocity addition rule, m/s
printf("\nThe relative speed of the ships as measured by an observer in either one = %5.3f c = %4.2e m/s", u/c, u);

// Result
// The relative speed of the ships as measured by an observer in either one = 0.988 c = 2.97e+008 m/s 