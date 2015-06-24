// Scilab Code Ex5.23: Page-295 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
m = 9.1e-031;    // Mass of the electron, kg
v = 1e+003;    // Velocity of the electron, m/s
delta_v = v*0.05/100;    // Minimum uncertainty in the velocity of the electron, m/s
delta_x = h/(m*delta_v);    // Minimum uncertainty in the position of the electron, m 
printf("\nThe minimum uncertainty in the position of the electron = %4.2e m", delta_x);

// Result
// The minimum uncertainty in the position of the electron = 1.45e-003 m 