// Scilab code Ex5.8: Current carrying conductor in magnetic field: Pg 153 (2008)
clc; clear; 
phi = 2.5e-03;                             // Flux, Wb
l = 0.05;                                  // Effective length of pole, m
d = 0.03;                                  //  Effective width of pole, m
F = 1.25;                                  // Force exerted on conductor, N
A = l*d;                                   // Cross-sectional area of pole face, m^2
B = phi/A;                                // Flux density, T
theta = (%pi/2);                          // Angle, degrees
// Since F = B*I*l*sin(theta), solving for I
I = F/(B*l*sin(theta));                   // Current in conductor, A
theta_2 = (%pi/4);                        // New angle, degrees
F_2 = B*I*l*sin(theta_2);                  // Force exerted on conductor, N
printf("\nThe value of the current = %2g A", I);
printf("\nThe force exerted on conductor when placed at 45 degrees to the field = %5.3f newton", F_2);

// Result
// The value of the current = 14 A
// The force exerted on conductor when placed at 45 degrees to the field = 0.884 N
