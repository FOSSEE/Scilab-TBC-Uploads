// Scilab Code Ex5.20: Page-294 (2008)
clc; clear;
h = 6.62e-034;    // Planck's constant, Js
m = 9.11e-031;    // Rest mass of a electron, kg
delta_x = 1e-009;    // Minimum uncertainty in position of the electron, m
delta_p_min = h/delta_x;    // Minimum uncertainty in electron's momentum, kg-m/s
delta_v = delta_p_min/m;    // Minimum uncertainty in the measurement of velocity of the electron, m/s
printf("\nThe minimum uncertainty in the measurement of velocity of the electron = %4.2e m/s", delta_v);

// Result
// The minimum uncertainty in the measurement of velocity of the electron = 7.27e+005 m/s 