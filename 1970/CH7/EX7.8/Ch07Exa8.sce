// Scilab code Exa7.8:  : Page-295 (2011)
clc; clear;
e = 1.6022e-19;        // Charge of an electron, coulomb
BR = 2370e-06;         // Magnetic field in an orbit, tesla metre
m_0 = 9.1094e-31;      // Mass of an electron, Kg
c = 3e+08;             // Velocity of light, metre per sec
v = 1/sqrt((m_0/(BR*e))^2+1/c^2);      // velocity of the particle, metre per sec
E_e = m_0*c^2*((1-(v/c)^2)^(-1/2)-1)/1.6e-13;    // Energy of an electron, MeV
E_b = 0.028;        // Binding energy, MeV
E_g = E_e+E_b;        // Excitation energy, MeV
alpha_k = 0.5;        // K conversion coefficient
Z = 49;                // Number of protons
alpha = 1/137;        // Fine structure constant
L = (1/(1-(Z^3/alpha_k*alpha^4*(2*0.511/0.392)^(15/2))))/2;    // Angular momentum
l = 1;        // Orbital angular momentum
I = l-1/2;    // Parity
printf("\nFor K-electron state:\nThe excitation energy = %5.3f MeV\nThe angular momentum = %d\nThe parity : %3.1f", E_g, ceil(L), I);
// Result
// For K-electron state:
// The excitation energy = 0.393 MeV
// The angular momentum = 5
// The parity : 0.5 


