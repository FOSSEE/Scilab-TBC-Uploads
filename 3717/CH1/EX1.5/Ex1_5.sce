// Ex1_5 Page:13 (2014)
clc; clear;
c = 3e+08;  // Speed of light in vacuum, m/s
v = 0.9*c;  // Speed of beam of particles, m/s
delta_t = 5e-06;    // Mean lifetime of particles as measured in the Lab frame, s
delta_tau = delta_t*sqrt(1-(v/c)^2);    // The proper lifetime of the particles from Time Dilation Relation, s
printf("\nThe proper lifetime of the particles = %4.2e s", delta_tau);

// Result
// The proper lifetime of the particles = 2.18e-06 s 
