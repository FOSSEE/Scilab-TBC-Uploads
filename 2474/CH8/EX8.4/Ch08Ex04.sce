// Scilab code Ex8.4: Pg.323-324 (2008)
clc; clear;
k = 1.38e-23;    // Boltzmann constant, J/K
T = 300;    // Temperature, K
E = (3/2)*k*T;    // Average energy of H_2, J
m = 3.34e-27;    // Mass of H_2, kg
// Also E = (0.5*m*v^2), solving for v, we get
v = sqrt((2*E)/m);    // Average speed of H_2, m/s
printf("\nThe average speed of H_2 molecule = %4.2f km/s", v*1e-03);

// Result
// The average speed of H_2 molecule = 1.93 km/s 