// Scilab code Ex6.13: Pg 211 (2005)
clc; clear;
h_cross = 6.582e-016;   // Reduced Planck's constant, eV-s
// For spring-mass system
K = 0.100;  // Force constant of the spring-mass system, N/m
m = 0.0100; // Mass attached to the spring, kg
omega = sqrt(K/m);  // Angular frequency of oscillations, rad/s
delta_E = h_cross*omega;    // Energy spacing between quantum levels, eV
printf("\nThe energy spacing between quantum levels for spring-mass system = %4.2e eV\nwhich is far below present limits of detection", delta_E);
// For vibrating hydrogen molecule
K = 510.5;  // Force constant of the hydrogen molecule system, N/m
mu = 8.37e-028; // Reduced mass of the hydrogen molecule, kg
omega = sqrt(K/mu);  // Angular frequency of oscillations, rad/s
delta_E = h_cross*omega;    // Energy spacing between quantum levels, eV
printf("\nThe energy spacing between quantum levels for hydrogen molecule = %5.3f eV\nwhich can be measured easily", delta_E);

// Result
// The energy spacing between quantum levels for spring-mass system = 2.08e-15 eV
// which is far below present limits of detection
// The energy spacing between quantum levels for hydrogen molecule = 0.514 eV
// which can be measured easily 
