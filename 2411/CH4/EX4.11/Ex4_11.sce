// Scilab Code Ex4.11: Page-238 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
v = 0.99*c;    // Speed of the electron, m/s
m0 = 9.1e-031;    // Rest mass of the electron, kg
m = m0/sqrt(1-v^2/c^2);    // Moving mass of the electron, kg
E = m*c^2;    // Total energy of the electron, J
printf("\nThe total energy of the electron = %4.2e J", E);
KE_ratio = m0/(2*(m-m0))*(v/c)^2;    // Ratio of Newtonian kinetic energy to the relativistic kinetic energy
printf("\nThe ratio of Newtonian kinetic energy to the relativistic kinetic energy = %4.2f", KE_ratio);

// Result
// The total energy of the electron = 5.81e-013 J
// The ratio of Newtonian kinetic energy to the relativistic kinetic energy = 0.08 