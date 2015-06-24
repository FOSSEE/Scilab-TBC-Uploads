// Scilab code Ex3.1: Pg 69 (2005)
clc; clear;
e_total = 1400;   // Total power per unit area, W/(m^2)
sigma = 5.6e-08;    // Stefan-Boltzmann constant
R = 1.5e+11;    // Earth-sun distance, m
R_s = 7.0e+08;   // Radius of sun, m
// Using Stefan's law & solving for T, we get
T = (e_total*R^2/(sigma*R_s^2))^0.25;   // Temperature of sun, K
printf("\nThe temperature of sun = %4d K", T);

// Result
// The temperature of sun = 5820 K
