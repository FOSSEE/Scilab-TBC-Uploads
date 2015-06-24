// Scilab code Ex1.9:  Pg:21 (2008)
clc;clear;
h = 6.62e-034;    // Planck's constant, joule-sec
c = 3e+008;    // Velocity of light, m/s
m_0 = 9.1e-031;    // Rest mass of an electron, kg
m = 1836*m_0;    // Mass of a proton, kg
E = m_0*c^2;    // Energy of an electron, joule
// Since (1/2)*m*v^2 = 81.9e-015, solving for v
v = (2*E/m)^(1/2);    // Velocity of the electron, m/s
Lambda = h/(m*v);    // The de-Broglie wavelength of a proton, m
printf("\nThe de-Broglie wavelength of proton whose kinetic energy is equal to the rest energy of an electron = %1.0e angstrom", Lambda/1e-010);

// Result 
// The de-Broglie wavelength of proton whose kinetic energy is equal to the rest energy of an electron = 4e-004 angstrom