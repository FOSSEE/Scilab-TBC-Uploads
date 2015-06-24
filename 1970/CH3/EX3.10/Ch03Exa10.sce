// Scilab code Exa3.10 : : Page-125(2011)
clc; clear;
m_e = 9.1e-31;    // Mass of the positron, Kg
e = 1.6e-19;        // Charge of the positron, coulomb
c = 3e+08;            // Velocity of the light, metre per sec
eps = 8.85e-12;        // Absolute permittivity of free space, per N per metre-square per coulomb square
h = 6.6e-34;        // Planck's constant, joule sec
E = e^2*m_e*c/(eps*h*1.6e-13);        // Average energy of the positron, mega electron volts
printf("\nThe average energy of the positron = %6.4fZ MeV", E);

// Result
// The average energy of the positron = 0.0075Z MeV 
