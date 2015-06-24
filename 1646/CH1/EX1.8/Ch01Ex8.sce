// Scilab Code Ex1.8: Page:29 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, m/s
tau0 = 2e-008;    // Mean lifetime of meson at rest, m/s
v = 0.8*c;    // Velocity of moving meason, m/s
tau = tau0/sqrt(1-v^2/c^2);    // Mean lifetime of meson in motion, m/s
printf("\nThe mean lifetime of meson in motion = %4.2e s", tau);

// Result
// The mean lifetime of meson in motion = 3.33e-008 s 