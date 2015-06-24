// Scilab Code Ex4.7: Page-237 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
v = 0.9*c;    // Speed of the first particle, m/s
u_prime = 0.9*c;    // Speed of the oppositely moving second particle, m/s
u = (u_prime+v)/(1+u_prime*v/c^2);    // Velocity of one particle relative to the other from Velocity addition rule, m/s
printf("\nThe velocity of one particle relative to the other = %5.3f c = %4.2e m/s", u/c, u);

// Result
// The velocity of one particle relative to the other = 0.994 c = 2.98e+008 m/s 