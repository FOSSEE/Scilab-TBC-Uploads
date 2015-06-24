// Scilab Code Ex5.22: Page-295 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
m = 1e-009;    // Mass of the particle, kg
v = 1;    // Velocity of the particle, m/s
delta_v = v*0.01/100;    // Minimum uncertainty in the velocity of the particle, m/s
delta_x = h/(m*delta_v);    // Minimum uncertainty in the position of the particle, m 
printf("\nThe minimum uncertainty in the position of the particle = %4.2e m", delta_x);

// Result
// The minimum uncertainty in the position of the particle = 6.62e-021 m 