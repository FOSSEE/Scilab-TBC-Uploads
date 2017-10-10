// Ex12_1 Page:243 (2014)
clc; clear;
E_F = 8;    // Fermi energy, eV
E0_bar = 3/5*E_F;   // Average kinetic energy of a free electron gas at 0K
e = 1.6E-019;   // Energy equivalent of 1 eV, J
m = 9.1E-031;   // Mass of an electron, kg
v = sqrt(2*E0_bar*e/m); // Speed of the electron, m/s
printf("\nThe speed of the electron at its mean energy at 0K = %3.1e m/s", v);

// Result
// The speed of the electron at its mean energy at 0K = 1.3e+06 m/s
