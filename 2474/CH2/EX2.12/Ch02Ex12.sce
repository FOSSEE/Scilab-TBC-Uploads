// Scilab code Ex2.12: Pg.90 (2008)
clc; clear;
E_1 = 5;    // Energy of first photon, MeV
E_2 = 2;    // Energy of second photon, MeV
p_1 = 5;    // Momentum of first photon, MeV/c
p_2 = -2;    // Momentum of second photon, MeV/c
E = E_1 + E_2;    // Total energy of the system, MeV
p = p_1 + p_2;    // Total momentum of the system, MeV/c
E = sqrt((E^2)-(p^2));    // Rest energy of the system, MeV
printf("\nThe rest energy of the system of photons = %3.1f MeV",E);

// Result
// The rest energy of the system of photons = 6.3 MeV 
