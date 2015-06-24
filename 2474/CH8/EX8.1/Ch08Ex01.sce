// Scilab code Ex8.1: Pg.317 (2008)
clc; clear;

// Part (b)
// For simplicity let A be unity
A = 1;    // Normalisation constant
m = 28.6*1.67e-27;    // Mass of ideal gas, kg
g = 9.8;    // Acceleration due to gravity, m/s^2
k = 1.381e-23;    // Boltzmann factor, J/K
T = 300;    // Temperature, K
z_1 = 1000;    // Altitude, m
f_B_1000 = exp((-m*g*z_1)/(k*T));    // Boltzmann's distribution at an altitude of 1000 m 
z_2 = 0;    // Ground level, m
f_B_0 = exp((-m*g*z_2)/(k*T));    // Boltzmann's distribution at ground level
p_0 = 1.292;    // Density of gas at ground level, kg/m^3
// Since p_1000/p_0 = f_B_1000/f_B_0, solving for p_1000, we get
p_1000 = p_0*f_B_1000/f_B_0;    // Density of gas at 1000 m above ground, kg/m^3
printf("\nThe density of gas at 1000 m above ground = %5.3f kg/m^3", p_1000);

// Result
// The density of gas at 1000 m above ground = 1.154 kg/m^3 