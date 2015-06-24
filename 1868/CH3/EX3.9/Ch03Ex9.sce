// Scilab code Ex3.9: Pg 96 (2005)
clc; clear;
M = 1.99e+30;   // Mass of sun, kg
R_s = 6.37e+06;    // Radius of earth, m
G = 6.67e-11;   // Gravitational constant, Nm^2/kg^2
lamda = 300e-09;   // Wavelength, m
c = 3e+08;     // Velocity of light, m/s
delta_lamda = lamda*((G*M)/(R_s*c^2));   // Gravitational redshift, angstrom
printf("\nGravitational redshift = %3.1f angstrom", delta_lamda*1e+10);

// Result
// Gravitational redshift = 0.7 angstrom
