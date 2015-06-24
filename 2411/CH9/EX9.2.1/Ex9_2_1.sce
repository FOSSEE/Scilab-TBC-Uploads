// Scilab Code Ex9.2.1: Page-414 (2008)
clc; clear;
h = 6.63e-034;    // Planck's constant, Js
c = 3.00e+008;    // Speed of light in vacuum, m/s
I = 1e+004;    // Intensity of monochromatic beam, W/Sq.m
nu = 1e+004;    // Frequency of monochromatic beam, Hz
n = I/(h*nu*c);    // Average number of photons per cubic metre, photons/metre-cube
printf("\nThe average number of photons in the monochromatic beam of radiation = %4.2e photons/metre-cube", n);

// Result 
// The average number of photons in the monochromatic beam of radiation = 5.03e+024 photons/metre-cube 