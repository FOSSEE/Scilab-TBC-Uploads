// Scilab code Ex12.5: Pg.580 (2008)
clc; clear;
R_s = 1e-15;    // Range of strong interaction, m
sigma_s = %pi*R_s^2;    // Cross section for strong interaction, m^2
printf("\nThe cross section for strong interaction = %3.1e Sq.m or %2d mb", sigma_s, sigma_s*1e+31);

// Result
// The cross section for strong interaction = 3.1e-030 Sq.m or 31 mb 