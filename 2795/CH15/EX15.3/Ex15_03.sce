// Scilab Code Ex15.3: Page-568(2014)
clc; clear;
c = 3.00e+008;    // Speed of light in free space, m/s
G = 6.67e-011;    // Newton's gravitational constant, N-Sq.m/per kg square
h = 6.62e-034;    // Planck's constant, Js
h_bar = h/(2*%pi);    // Reduced Planck's constant, Js
sigma = 5.67e-008;    // Stefan-Boltzmann constant, W per Sq.m per K^4
k = 1.38e-023;    // Boltzmann constant, J/K
M0 = 1.99e+030;    // Mass of the sun, kg
alpha = 2*sigma*h_bar^4*c^6/((8*%pi)^3*k^4*G^2);    // A constant, kg^3/s
t = integrate('1/alpha*M^2', 'M', 0, 3*M0);
printf("\nThe time required for the 3-solar-mass black hole to evaporate = %3.1e y", t/(365.25*24*60*60));

// Result
// The time required for the 3-solar-mass black hole to evaporate = 5.7e+068 y 