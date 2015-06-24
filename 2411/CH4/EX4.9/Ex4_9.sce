// Scilab Code Ex4.9: Page-237 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
E0 = 1;    // Assume the rest energy of the particle to be unity
E = 3*E0;    // Total energy of the particle
v = sqrt(1-(E0/E)^2)*c;    // Velocity of the particle from relativistic variation of mass with speed, m/s
printf("\nThe velocity of the particle when its total energy is thrice its rest energy = %5.3e cm/s", v);

// Result
// The velocity of the particle when its total energy is thrice its rest energy = 2.828e+008 cm/s 