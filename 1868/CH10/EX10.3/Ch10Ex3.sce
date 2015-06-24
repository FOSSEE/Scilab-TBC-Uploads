// Scilab code Ex10.3: Pg 352 (2005)
clc; clear;
// Part (b)
I = integrate('z^2/(exp(z)-1)', 'z', 0, 100); // Integral value
k_B = 8.62e-05;   // Boltzmann constant, eV/K
T = 3000;    // Temperature, K
h = 4.136e-15;    // Plank's constant, eV
c = 3e+10;    // Velocity of light, cm/s
N_V = 8*%pi*((k_B*T)/(h*c))^3*I;    // Number of photons/cc
printf("\nThe density of photons inside the cavity = %4.2fe+11 photons/cc", N_V*1e-11);

// Result
// The density of photons inside the cavity = 5.47e+11 photons/cc
