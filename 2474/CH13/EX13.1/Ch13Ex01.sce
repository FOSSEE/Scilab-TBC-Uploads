// Scilab code Ex13.1: Pg.621 (2008)
clc; clear;
L_o = 3.84e+26;    // Luminosity of Sun, W
R_o = 6.96e+08;    // Solar radius, m
sigma = 5.67e-08;    // Stefan's constant, W/m^2-K^4
// Since sigma*T_e^4 = L/(4*%pi*R^2), solving for T_e
T_e = (L_o/(4*%pi*sigma*(R_o)^2))^(1/4);    // Effective temperature of photosphere, K
printf("\nThe effective temperature of photosphere of sun = %4d K", T_e);

// Result
// The effective temperature of photosphere of sun = 5775 K 