// Scilab code Ex12.3: Pg.576 (2008)
clc; clear;
h_cross = 1.055e-34;    // Reduced Planck's constant
c = 3e+08;    // Velocity of light, m/s
m = 91.16*1.6e-10;    // Mass of Z0, J/c^2
R = h_cross*c/m;    // Range of Weak interaction, m
printf("\nThe range of the weak interaction = %4.2e m or %4.2e fm", R, R*1e+15);

// Result
// The range of the weak interaction = 2.17e-018 m or 2.17e-003 fm 