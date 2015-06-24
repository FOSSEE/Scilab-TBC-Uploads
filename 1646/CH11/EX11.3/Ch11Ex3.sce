// Scilab Code Ex11.3: Page-560 (2011)
clc;clear;
sigma = 5;....// Conductivity of the conducting medium, mho/m
eps_r = 8.85e-12;....// Relative electrical permittivity of medium, F/m
eps_0 = 1;    // Electrical permittivity of free space, F/m
E0 = 250;   // Amplitude of applied electric field, V/m
J = sigma*E0;    // Amplitude of conduction current density, A/metre-square
J_D = eps_r*eps_0*E0*1e+010;   // Amplitude of displacement current density, A/metre-square
omega = sigma/(eps_0*eps_r);    // Frequency at which J = J_D
printf("\nThe conduction current density = %3dsin(10^10t) A/metre-quare", J);
printf("\nThe displacement current density = %5.3fcos(10^10t) A/metre-quare", J_D);
printf("\nThe frequency at which J = J_D is %3.1e Hz", omega);

// Result
// The conduction current density = 1250sin(10^10t) A/metre-quare
// The displacement current density = 22.125cos(10^10t) A/metre-quare
// The frequency at which J = J_D is 5.6e+11 Hz 





