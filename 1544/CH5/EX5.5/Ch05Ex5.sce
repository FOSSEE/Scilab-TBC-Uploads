// Scilab code Ex5.5: Pg 149 (2008)
clc; clear;
l = 0.15;                                 // Effective length of conductor, m
v = 8;                                    // Velocity, m^2
theta = (%pi/180)*55;                     // Angle, degrees
e = 25;                                   // Induced emf, V
// Since e = B*l*v*sin(theta), solving for B
B = e/(l*v*sin(theta));                    // Flux density, T
printf("\nThe density of the field = %5.3f tesla", B);

// Result
// The density of the field = 25.433 T
