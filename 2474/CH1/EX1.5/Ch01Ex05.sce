// Scilab code Ex1.5: Pg.25-26 (2008)
clc; clear;
c = 3e+08;    // Velocity of light, m/s
// From the figure, we have
delta_x = 1.5;     // Distance, m
delta_t = 3/c;    // Time, s
// We have speed = distance/time taken
u = delta_x/delta_t;    // Speed of the particle, m/s
printf("\nSpeed of the particle = %3.1fc", u/c);

// Result
// Speed of the particle = 0.5c