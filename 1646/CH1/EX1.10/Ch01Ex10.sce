// Scilab Code Ex1.10: Page:30 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, m/s
tau0 = 2.5e-008;    // Mean lifetime of meson at rest, m/s
v = 0.8*c;    // Velocity of moving meason, m/s
tau = tau0/sqrt(1-v^2/c^2);    // Mean lifetime of meson in motion, m/s
N0 = 1;    // Assume initial flux of meson beam to be unity, watt/Sq.m
N = N0*%e^(-2);    // Meson flux after time t, watt/Sq.m
// As N = N0*e^(-t/tau), which on comparing gives
t = 2*tau;    // Time during which the meson beam flux reduces, s
d = 0.8*c*t;    // The distance that the meson beam can travel before reduction in its flux, m
printf("\nThe distance that the meson beam can travel before reduction in its flux = %2d m", d);

// Result
// The distance that the meson beam can travel before reduction in its flux = 20 m 