// Scilab code Ex10.2: Pg 345 (2005)
clc; clear;
// Part (a)
N = 6.02e+23;    // Number of molecules at STP
m = 3.34e-27;   // Mass of H-molecule, kg
h_cross = 1.055e-34;   // Reduced Plank's constant, J-s
V = 22.4e-03;     // Volume occupied by molecules at STP, m^3
T = 273;    // Absolute temperature, K
k_B = 13.8e-24;    // Boltzmann constant, J/K
x_H = N/V*h_cross^3/(8*(m*k_B*T)^(3/2));    // Particle concentration at STP
printf("\nx_H = %4.2e", x_H);
if (x_H < 1)
printf("\nThe criterion for the validity of Maxwell–Boltzmann Statistics is satisfied in hydrogen.");

// Part (b)
d_Ag = 10.5;   // Density of silver, g/m^3
M_Ag = 107.9;   // Molar weight of silver, g
NV_Ag = (d_Ag/M_Ag)*(6.02e+023)*1e+06;    // Density of free electrons in silver, electrons/m^3
me = 9.109e-031;    // Mass of an electron, kg
T = 300;    // Room temperature, K
x_Ag = ((NV_Ag)*h_cross^3)/(8*(me*k_B*T)^(3/2));   // Particle concentration at STP
printf("\nx_Ag = %4.2f", x_Ag);
if (x_Ag > 1)
printf("\nThe criterion for the validity of Maxwell–Boltzmann Statistics does not hold for electrons in silver");

// Result
// x_H = 8.84e-08
// The criterion for the validity of Maxwell–Boltzmann Statistics is satisfied in hydrogen.
// x_Ag = 37.13
// The criterion for the validity of Maxwell–Boltzmann Statistics does not hold for electrons in silver 
