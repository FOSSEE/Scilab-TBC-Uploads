// Scilab code Ex1.3: : Pg:19 (2008)
clc;clear;
m = 1.67e-027;    // Mass of proton, kg
h = 6.62e-034;    // Planck's constant, joule-sec
c = 3e+08;    // Velocity of light, m/s
v = c/20;    // Velocity of proton, m/sec
Lambda = h/(m*v);    // de-Broglie wavelength of a proton, m
printf("\nThe de-Broglie wavelength of a proton = %4.2e m", Lambda);

// Result 
// The de-Broglie wavelength of a proton = 2.64e-014 m 