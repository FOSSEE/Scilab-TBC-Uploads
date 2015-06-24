// Scilab Code Ex2.2: Page:79 (2011)
clc;clear;
h = 6.62e-34;   // Planck's constant, J-s
m0 = 1.6e-27;   // Rest mass of proton, kg
c = 3e+8;   // Speed of light, in m/s
v = c/20;    // Velocity of the proton, in m/s
lambda = (h*sqrt(1-v^2/c^2))/(m0*v);
printf("\nThe de broglie wavelength associated with the proton = %4.2e m",lambda);

// Result
//  The de broglie wavelength associated with the proton = 2.75e-14 m 
