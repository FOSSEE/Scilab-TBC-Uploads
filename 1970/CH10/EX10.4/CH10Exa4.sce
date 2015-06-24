// Scilab code Exa10.4 : : Page-456 (2011)  
clc; clear;
r_min = 4e-015;        // Distance between two deutrons, metre
k = 1.3806504e-023;       // Boltzmann's constant, Joule per kelvin
alpha = 1/137;            // Fine structure constant
h_red = 1.05457168e-034;        // Reduced planck's constant, Joule sec
C = 3e+08;                    // Velocity of light, meter per second
T = alpha*h_red*C/(r_min*k);
printf("\nThe temperature in the fusion reaction is = %3.1e K", T);

// Result
// The temperature in the fusion reaction is = 4.2e+009 K 