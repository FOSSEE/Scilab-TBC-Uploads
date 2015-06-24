// Scilab Code Ex16.4: Page-589(2014)
clc; clear;
M = 1.99e+030;    // Mass of the sun, kg
G = 6.67e-011;    // Universal gravitational constant, N-Sq.m/kg^2
k = 1.38e-023;    // Boltzmann constant, J/K
R = 6.96e+008;    // Radius of the sun, m
m = 1.67e-027;    // Rest mass of the proton, kg
PE = 3/5*(G*M^2/R);    // Self potential energy of the sun, J
// As KE = 1/3*(M/m_p)*m_p*v^2, solving for v
v = sqrt(2*PE/M);    // Velocity of a proton inside the sun, m/s
// From kinetic theory of gases, v = sqrt(3*k*T/m), solving for T
T = m*v^2/(3*k);    // The mean temperature of the sun, K
printf("\nThe mean temperature of the sun = %1.0e K", T);

// Result
// The mean temperature of the sun = 9e+006 K 