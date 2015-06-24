// Scilab Code Ex4.5:Page-139 (2013)
clc; clear
Z1 = 2;    // Atomic number of He nucleus
Z2 = 13;    // Atomic number of aluminium
e = 1.602e-019;    // Charge on an electron, C
k = 9e+009;    // Coulomb constant, N-Sq.m/C^2
K = 7.7;    // Kinetic energy of alpha particles, MeV
r_min = Z1*Z2*e^2*k/(K*1.6e-013);    // Size of the aluminium nucleus, m
printf("\nThe size of the aluminium nucleus = %3.1e m", r_min);

// Result
// The size of the aluminium nucleus = 4.9e-015 m 


// Result
// The maximum scttering angle for aplha particle = 0.016 degrees 