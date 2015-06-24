// Scilab Code Ex15.2: Page-567(2014)
clc; clear;
c = 3.00e+008;    // Speed of light in free space, m/s
G = 6.67e-011;    // Newton's gravitational constant, N-Sq.m/per kg square
M_S = 2.0e+030;    // Mass of the sun, kg
M_E = 6.0e+024;    // Mass of the earth, kg
r_S = 2*G*M_S/(c^2*1e+003);    // Schwarzschild radius for sun, km
r_E = 2*G*M_E/(c^2*1e-003);    // Schwarzschild radius for earth, mm
printf("\nThe Schwarzschild radius for sun = %d km", ceil(r_S));
printf("\nThe Schwarzschild radius for earth = %d mm", ceil(r_E));

// Result
// The Schwarzschild radius for sun = 3 km
// The Schwarzschild radius for earth = 9 mm 