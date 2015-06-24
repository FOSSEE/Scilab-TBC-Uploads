// Scilab Code Ex1.10:  Page-1.8 (2009)
clc; clear;
m = 1.67e-027;      // Mass of the proton, kg
c = 3e+08;      // Speed of light, m/s
v = 1/20*c;        // Velocity of the proton, m/s
h = 6.626e-034;     // Planck's constant, Js
lambda = h/(m*v);  // de Broglie wavelength of the neutron, m
printf("\nThe de Broglie wavelength associated with moving proton = %5.3e m", lambda);

// Result 
// The de Broglie wavelength associated with moving proton = 2.645e-14 m

