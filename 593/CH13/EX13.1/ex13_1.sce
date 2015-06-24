clear;
//clc();

// Example 13.1
// Page: 349
printf("Example-13.1  Page no.-349\n\n");

//***Data***//
T =273.15+25;//[K] given temperature
R = 8.314;//[J/(mol*K)] universal gas constant

// We have the reaction as follows
// H2O = H+ + OH-

// Reading the free energy of species from the Table A.8 ( page 427), we have 
g_0_H = 0;//[kJ/mol]
g_0_OH = -157.29;//[kJ/mol]
g_0_H2O = -237.1;//[kJ/mol]

// Thus free enaergy change of the reaction is 
delta_g_0 = g_0_H + g_0_OH - g_0_H2O;//[kJ/mol]
// Changing in J/mol we have 
delta_g_1 = delta_g_0*1000;//[J/mol]

// Now equilibrium constant of the reaction is given by
K = exp((-delta_g_1)/(R*T));

// Also, in terms of activity
// K = ([[H+]/(1 molal)]*[[OH-]/(1 molal)])/[a_water]
// The activity of any pure liquid at its standard state is 1.00, and here water is practically pure, so
// K_w = [[H+]/(1 molal)]*[[OH-]/(1 molal)] = K
// or 
K_w = K;

printf("At the equilibrium the product of the hydrogen ion and hydroxil ion is %0.1e",K_w);
