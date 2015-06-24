// Scilab code Ex5.6: Pg.209 (2008)
clc; clear;

// Part (1)
m = 1e-09;    // Mass of microscopic particle, kg
L = 1e-06;    // Length of box, m
h_cross = 1.055e-034;    // Reduced plank's constant, J-s
e = 1.6e-19;    // Charge on electron, C
E_bar = h_cross^2/(2*m*L^2);    // Minimum Kinetic energy, J
E = E_bar/e ;   // Minimum kinetic energy, eV
printf("\nThe minimum kinetic energy of particle = %4.2e J or %4.2e eV", E_bar, E);

// Part (2)
v = sqrt((2*E_bar)/m);    // Corresponding speed, m/s
printf("\nThe speed corresponding to the obtained kinetic energy = %4.2e m/s",v);

// Result
// The minimum kinetic energy of particle = 5.57e-048 J or 3.48e-029 eV
// The speed corresponding to the obtained kinetic energy = 1.05e-019 m/s 