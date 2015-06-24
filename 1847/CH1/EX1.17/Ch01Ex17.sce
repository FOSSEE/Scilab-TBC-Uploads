// Scilab Code Ex1.17:  Page-1.19 (2009)
clc; clear;
m = 10e-03;     // Mass of the body, kg
v = 110;    // Velocity of the mass, m/s
h = 6.6e-034;     // Planck's constant
lambda = h/(m*v); // de-Broglie wavelength of electron, m
printf("\nThe wavelength associated with mass moving with velocity %d m/s = %1.0e m", v, lambda);

// Result 
// The wavelength associated with mass moving with velocity 110 m/s = 6e-34 m 
