// Scilab Code Ex4.5: Page-236 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
t0 = 2.5e-008;    // Proper life time of pi-meson, s
t = 2.5e-007;    // MEan life time of pi-meson, s
// As t = t0/(sqrt(1-v^2/c^2)), solving for v
v = sqrt(1-(t0/t)^2)*c;    // Velocity of pi meson, m/s
printf("\nThe velocity of pi meson = %5.3f c = %4.2e m/s", v/c, v);

// Result
// The velocity of pi meson = 0.995 c = 2.98e+008 m/s 