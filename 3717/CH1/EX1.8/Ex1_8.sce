// Ex1_8 Page:18 (2014)
clc; clear;
c = 1;  // For simplicity assume speed of light to be unity, m/s
m_e = 0.512;  // The rest energy of an electron, MeV
T = 10; // The kinetic energy of the electron, MeV
E = T + m_e;    // Total energy of the electron, MeV
p = sqrt(E^2 - m_e^2)/c;    // Momentum of the electron from Relativistic Energy Relation, MeV
v = poly(0, "v");   // Declare speed variable
v = roots(1 - (v/c)^2 - (m_e/E)^2);    // Speed of the electron from Relativistic Energy Variation formula, m/s
printf("\nThe momentum of the electron = %4.1f MeV/c", p);
printf("\nThe speed of the electron = %6.4fc", v(1));

// Result
// The momentum of the electron = 10.5 MeV/c
// The speed of the electron = 0.9988c 
