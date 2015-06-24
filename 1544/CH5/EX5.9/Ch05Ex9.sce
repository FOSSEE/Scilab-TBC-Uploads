// Scilab code Ex5.9: Pg 154 (2008)
clc; clear;
l = 0.015;                                    // Length of coil, m
d = 0.006;                                     // Width of  coil, m
B = 1.2;                                      // Flux density, T
I = 1e-02;                                    // Current, a
r = d/2;                                      // Radius of rotation, m
// Since torque is given by the product of force and distance, therefore, we have
T = 2*B*I*l*r;                               // Torque, Nm
 printf("\nThe torque exerted on the coil = %4.2f micro-Nm", T/1e-06);
 
// Result
// The torque exerted on the coil = 1.08 micro-Nm 
