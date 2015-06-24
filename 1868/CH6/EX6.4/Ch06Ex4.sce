// Scilab code Ex6.4: Pg 197 (2005)
clc; clear;
delta_x0 = 1e-010;    // Initial width of the localized space, m
delta_xt = 10*delta_x0;    // Final width at which the wave packet is dispersed, m
h_cross = 1.055e-034;    // Reduced Planck's constant, Js
m = 9.11e-031;    // Mass of the electron, kg
// From Dispersion relation, delta_xt^2 - delta_x0^2 = sqrt(h_cross*t/(2*m*deltax0)^2), solving for t
t = 2*m*sqrt(delta_xt^2 - delta_x0^2)*delta_x0/h_cross;  // Time which elapses before delocalization
printf("\nThe time which elapses before the localization of electron destroys = %3.1e s", t);
m = 1e-03;    // Mass of marble, kg
delta_x0 = 1e-004;    // Initial width of the localized space, m
delta_xt = 10*delta_x0;    // Final width at which the wave packet is dispersed, m
t = 2*m*sqrt(delta_xt^2 - delta_x0^2)*delta_x0/h_cross;  // Time which elapses before delocalization
printf("\nThe time which elapses before the localization of marble destroys = %3.1e s", t);
printf("\nFor all the practical purposes, the marble will remain localized for ever");
// Result
// 


