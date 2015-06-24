// Scilab code Ex14.1: Pg 513 (2005)
clc; clear;
// Part (a)
u = 931.5;     // Atomic mass unit, Mev    
M_Li = 7.016003;   // Mass of Lithium, kg
M_H = 1.007825;   // Mass of Hydrogen, kg
M_He = 4.002603;   // Mass of Helium, kg
Q = (M_Li + M_H - 2*M_He)*u;    // Q-value of the reaction, MeV
// Part (b)
K_incident = 0.6;    // Kinetic energy of the incident protons, MeV
K_products = Q + K_incident;    // Kinetic energy of the products
printf("\nThe Q value of the reaction = %4.1f MeV", Q);
printf("\nThe kinetic energy of the products (two alpha particles) = %4.1f MeV", K_products);

// Result
// The Q value of the reaction = 17.3 MeV
// The kinetic energy of the products (two alpha particles) = 17.9 MeV