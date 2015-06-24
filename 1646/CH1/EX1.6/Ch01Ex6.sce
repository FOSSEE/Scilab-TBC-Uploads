// Scilab Code Ex1.6 : Page:28 (2011)
clc;clear;
a = 1;    // For simplicity assume length of semi minor axis to be unity, m
c = 3e+08;    // Speed of light, m/s
v = poly(0, 'v');    // Declare velocity variable, m/s
// As b = a*sqrt(1-v^2/c^2), length of semi-major axis
// Also A_c = %pi*a^2, area of the lamina in its own frame and
// A_e = %pi*a*b, area of the lamina in stationary frame S, so with A_c = A_e
v = roots(1-v^2/c^2 - 1/4);    // Velocity at which surface area of lamina reduces to half in S-frame, m/s
printf("\nThe velocity at which surface area of lamina reduces to half in S-frame = %4.2e", v(1));

// Result
// The velocity at which surface area of lamina reduces to half in S-frame = 2.60e+008 
