// Ex15_2 Page:298 (2014)
clc;clear;
h = 6.626e-034;    // Planck's constant, Js
c = 3e+008;    // Speed of light in vacuum, m/s
t = 30e-003;    // Pulse width of laser, s
P = 0.6;    // Output power of laser per pulse, W
lambda = 640e-009;    // Wavelength of laser light, m
E = P*t;    // Energy deposited per laser pulse, J
n = E*lambda/(h*c);    // Number of photons in each laser pulse
printf("\nThe energy deposited per laser pulse = %5.3f J", E);
printf("\nThe number of photons in each pulse = %3.1e", n);

// Result
// The energy deposited per laser pulse = 0.018 J
// The number of photons in each pulse = 5.8e+016 