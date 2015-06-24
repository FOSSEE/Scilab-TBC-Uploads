// Scilab code Ex11.15: Pg.511 (2008)
clc; clear;
h_cross = 1.06e-34;    // Reduced Planks constant, J-s
c = 3e+08;    // Velocity of light, m/s
m = 140e+06/c^2;    // Mass of pion, MeV
R = h_cross*c/(m*1.6e-19*c^2);    // Range of nuclear force, m
printf("\nThe range of nuclear force = %3.1f fm", R/1e-15);

// Result
// The range of nuclear force = 1.4 fm 