// Scilab code Ex1.10: Pg:36 (2008)
clc;clear;
m = 9.13e-031;    // Mass of an electron, kg
e = 1.6e-019;    // Charge of electron, coulomb
V = 20000;    // Potential difference applied between cathode and anode, volt
// Since (1/2)*m*v^2 = e*V, solving for v
v = sqrt(2*e*V/m);    // Maximum speed of electrons striking the anti cathode, m/s
printf("\nThe maximum speed of electrons striking anticathode in an X-ray tube = %4.2e m/s", v);

// Result 
// The maximum speed of electrons striking anticathode in an X-ray tube = 8.37e+007 m/s  