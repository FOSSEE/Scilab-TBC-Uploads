// Scilab code Exa11.3 : : Page-536 (2011)
clc; clear;
f = 200*10^6;        // Frequency of the accelerator, cycle per sec
M = 1.6724e-27;        // Mass of the proton, Kg
E = 45.3*1.6e-13;        // Accelerating energy, joule
L_f = round (1/f*sqrt(2*E/M)*100);    // Length of the final drift tube, centi metre
L_1 = 5.35*10^-2;                // Length of the first drift tube, metre
K_E = (1/2*M*L_1^2*f^2)/1.6e-13;    // Kinetic energy of the injected proton, MeV
E_inc = E/1.6e-13-K_E;        // Increase in energy, MeV
q = 1.6e-19;                // Charge of the proton, C
V = 1.49e+06;            // Accelerating voltage, volts
N = E_inc*1.6e-13/(q*V);    // Number of drift protons
L = 1/f*sqrt(2*q*V/M)*integrate('n^(1/2)', 'n', 0, N);    // Total length of the accelerator, metre
printf("\nThe length of the final drift tube = %d cm\nThe kinetic energy of the injected protons = %4.2f MeV\nThe total length of the accelerator = %3.1f metre", L_f, K_E, L);

// Result
// The length of the final drift tube = 47 cm
// The kinetic energy of the injected protons = 0.60 MeV
// The total length of the accelerator = 9.2 metre 