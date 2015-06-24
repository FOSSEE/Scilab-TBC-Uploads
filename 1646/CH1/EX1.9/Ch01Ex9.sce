// Scilab Code Ex1.9: Page:30 (2011) 
clc;clear;
c = 3e+008;    // Speed of light in vacuum, m/s
delta_t0 = 59;    // Reading of the moving clock for each hour, min
delta_t = 60;    // Reading of the stationary clock for each hour, min
// As from Time Dilation, delta_t = delta_t0/sqrt(1-v^2/c^2), solving for v
v = c*sqrt(1-(delta_t0/delta_t)^2);
printf("\nThe speed at which the moving clock ticks slow = %4.2e m/s", v);

// Result
// The speed at which the moving clock ticks slow = 5.45e+007 m/s 