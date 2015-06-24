// Scilab code Ex8.3: Pg.321 (2008)
clc; clear;
k = 1.38e-23;    // Boltzmann constant, J/K
T = 300;    // Temperature, K
m = 4.68e-26;    // Mass of N_2 molecule, kg
v = sqrt((8*k*T)/(%pi*m));    // Average speed of N_2 molecule, m/s
printf("\nThe average speed of N_2 molecule = %5.1f m/s or = %4d km/h", v, v*3.6);

// Result
// The average speed of N_2 molecule = 474.6 m/s or = 1708 km/h 