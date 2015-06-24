// Scilab Code Ex1.2: Page:26 (2011)
clc;clear;
c = 3e+008;    // Speed of light in vacuum, m/s
delta_x = 2.45e+03;    // Space difference, m
delta_t = 5.35e-06;    // Time difference, s
v = 0.855*c;    // Speed of frame S_prime, m/s
delta_x_prime = 1/sqrt(1-v^2/c^2)*(delta_x - v*(delta_t))*1e-03;    // Distance between two flashes as measured in S_prime frame, km
delta_t_prime = 1/sqrt(1-v^2/c^2)*(delta_t - v/c^2*delta_x)*1e+006;    // Time between two flashes as measured in S_prime
printf("\nThe distance between two flashes as measured in S_prime frame = %4.2f km", delta_x_prime);
printf("\nThe time between two flashes as measured in S_prime frame = %4.2f micro-second", delta_t_prime);

// Result
// The distance between two flashes as measured in S_prime frame = 2.08 km
// The time between two flashes as measured in S_prime frame = -3.15 micro-second 