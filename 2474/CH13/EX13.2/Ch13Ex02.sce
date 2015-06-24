// Scilab code Ex13.2: Pg.624 (2008)
clc; clear;

// Calculation of pressure at the centre of Sun
M = 1.99e+30;    // Mass of Sun, kg
R = 6.96e+08;    // Solar radius, m
G = 6.67e-011;    // Gravitational constant, N-m^2/kg^2
mu = M/R^2;    // Mass per unit surface area of Sun, kg/m^2
g = 0.5*G*(M/R^2);    // Acceleration due to gravity in the Sun, m/s^2
P_c = mu*g;    // Pressure at the center of the Sun, N/m^2
printf("\nThe pressure at the center of the sun = %1.0e N/m^2", P_c);

// Calculation of pressure inside the H-atom
k = 9e+09;    // Coulomb's cnstant, N-m^2/C^2
e = 1.6e-19;    // Charge iside the atom, C
a_o = 0.5e-10;    // Bohr's radius for H-atom, m
A = 4*%pi*a_o^2;    // Surface area of Sun, m^2
F = (k*e^2)/a_o^2;    // Coulomb's force of attraction, N
P = F/A;    // Pressure inside the H-atom, N/m^2
printf("\nThe pressure inside the H-atom = %3.1e N/m^2",P);
printf("\nSince the pressure at the centre of the sun is %3.1e times greater than that of the pressure inside the H-atom so it is unlikely to exist in its interior.", P_c/P);

// Result
// he pressure at the center of the sun = 6e+014 N/m^2
// The pressure inside the H-atom = 2.9e+012 N/m^2
// Since the pressure at the centre of the sun is 1.9e+002 times greater than that of the pressure inside the H-atom so it is unlikely to exist in its interior. 