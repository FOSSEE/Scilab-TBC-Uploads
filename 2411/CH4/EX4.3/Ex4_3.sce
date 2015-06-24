// Scilab Code Ex4.3: Page-234 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
v = [c c/sqrt(2) sqrt(3)/2*c c/2 0.8*c];    // Different speeds of metre rod, m/s
L0 = 100;    // Actual length of the rod, cm
for i = 1:1:5
    L = L0*sqrt(1-v(i)^2/c^2);    // Apparent length of rod from Lorentz transformation, m
    printf("\nFor v = %4.2e m/s, L = %4.1f cm", v(i), L);
end

// Result
// For v = 3.00e+008 m/s, L =  0.0 cm
// For v = 2.12e+008 m/s, L = 70.7 cm
// For v = 2.60e+008 m/s, L = 50.0 cm
// For v = 1.50e+008 m/s, L = 86.6 cm
// For v = 2.40e+008 m/s, L = 60.0 cm 