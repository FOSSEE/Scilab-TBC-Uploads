// Scilab Code Ex10.7 : Page-374 (2014)
clc; clear;
k = 1.38e-023;    // Boltzmann constant, J/K
e = 1.602e-019;    // Energy equivalent of 1 eV, J
h = 6.62e-034;    // Planck's constant, Js
c = 3.00e+008;    // Speed of light, m/s
T_c = 9.25;    // Critical temperature for niobium, K
E_g = 3.54*k*T_c;    // Energy gap for niobium from BCS theory, J
lambda = h*c/E_g;    // Minimum photon wavelength needed to break the Cooper pair, m
printf("\nThe energy gap for niobium = %4.2f meV", E_g/(e*1e-003));
printf("\nThe minimum photon wavelength needed to break the Cooper pair = %4.2e m", lambda);

// Result
// The energy gap for niobium from BCS theory = 2.82 meV
// The minimum photon wavelength needed to break the Cooper pair = 4.39e-004 m 