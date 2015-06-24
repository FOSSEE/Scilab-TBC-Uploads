// Scilab code Ex5.7:Pg 152 (2008)
clc; clear;
l = 0.22;                                 // Effective length of conductor, m
B = 0.35;                               // Flux density, T
I = 3;                                  // Current, A
theta = (%pi/2);                        // Angle, degrees
// Since the force exerted on the conductor placed in magnetic field is directly proportional to the flux density , the value of current flowing through the conductor, and the length of conductor lying inside the field, therefore
F = B*I*l*sin(theta);                   // Force, N
printf("\nThe force exerted on the conductor = %5.3f N", F);

// Result
// The force exerted on the conductor = 0.231 N
