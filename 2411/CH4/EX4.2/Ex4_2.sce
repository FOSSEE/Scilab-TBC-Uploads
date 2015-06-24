// Scilab Code Ex4.2: Page-233 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
v = 3e+007;    // Speed of metre rod, m/s
L0 = 1;    // Actual length of the rod, m
L = L0*sqrt(1-v^2/c^2);    // Apparent length of rod from Lorentz transformation, m
printf("\nThe apparent length of rod realtive to the observer = %5.3f m", L);

// Result
// The apparent length of rod realtive to the observer = 0.995 m 