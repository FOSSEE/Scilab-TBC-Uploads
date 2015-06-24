// Scilab code Ex2.3: Pg.47 (2005)
clc; clear;
c = 3e+08;     // Velocity of light, m/s
u = 0.85*c;   // Velocity of electron, m/s
E_0 = 0.511;   // Rest energy of electron, MeV
E = E_0/(sqrt(1-(u/c)^2));   // Total energy of electron, MeV
K = E - E_0;   // Kinetic energy of electron, MeV
printf("\nThe total energy of electron = %5.3f MeV", E);
printf("\nThe kinetic energy of electron = %5.3f MeV", K);

// Result
// The total energy of electron = 0.970 MeV
// The kinetic energy of electron = 0.459 MeV
