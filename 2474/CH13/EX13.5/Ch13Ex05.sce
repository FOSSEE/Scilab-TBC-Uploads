// Scilab code Ex13.5: Pg.659 (2008)
clc; clear;
v = 1200;    // Recession velocity, km/s
H0 = 21e-06;    // Hubble constant, per second
r = v/H0;    // Distance of galaxy from Virgo, c.y
printf("\nThe distance of galaxy from virgo = %3.1e c.y or %4.1f Mpc", r, r/3.26/1e+006);

// Result
// The distance of galaxy from virgo = 5.7e+007 c.y or 17.5 Mpc 