// Ex1_4 Page:12 (2014)
clc; clear;
c = 3e+08;  // Speed of light in vacuum, m/s
delta_tau = 2.6e-08;    // Mean lifetime of an unstable particle at rest, s
d = 20; // Distance travelled by the unstable particle before it decays, m
v = poly(0, "v");   // Declare the speed variable
v = 1/sqrt(roots(d^2*v - (d/c)^2 - delta_tau^2));   // Speed of the particle in Lab frame from Time Dilation relation, m/s
printf("\nThe speed at which the unstable particle 20 m distance before decaying = %3.1e m/s", v);

// Result
// The speed at which the unstable particle 20 m distance before decaying = 2.8e+08 m/s 
