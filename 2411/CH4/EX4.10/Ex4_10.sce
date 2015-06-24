// Scilab Code Ex4.10: Page-238 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
m0 = 9.1e-031;    // Rest mass of the electron, kg
E0 = m0*c^2;    // Rest energy of the electron, J
printf("\nThe rest energy of the electron = %4.2f MeV", E0/1.6e-013);
E = 1.25*E0;    // Total energy of the particle
v = sqrt(1-(E0/E)^2)*c;    // Velocity of the particle from relativistic variation of mass with speed, m/s
printf("\nThe velocity of the electron when its total energy is 1.25 times its rest energy = %3.1f c = %3.1e cm/s", v/c, v);

// Result
// The rest energy of the electron = 0.51 MeV
// The velocity of the electron when its total energy is 1.25 times its rest energy = 0.6 c = 1.8e+008 cm/s