// Scilab Code Ex6.8: Page-349 (2008)
clc; clear;
k = 1.38e-016;    // Boltzmann constant, erg/K
T = 100;    // Given temperature, K
E1 = 0;    // Energy of the first state, erg
E2 = 1.38e-014;    // Energy of the second state, erg
E3 = 2.76e-014;    // Energy of the third state, erg
g1 = 2, g2 = 5, g3 = 4;    // Different ways of occuring for E1, E2 and E3 states
P1 = g1*exp(-E1/(k*T));    // Probability of occurence of state E1
P2 = g2*exp(-E2/(k*T));    // Probability of occurence of state E2
P3 = g3*exp(-E3/(k*T));    // Probability of occurence of state E3
PE_3 = P3/(P1+P2+P3);    // Probability for the system to be in any one microstates of E3
P0 = P1/(P1+P2+P3);    // Probability for the system to be in ground state
printf("\nThe probability for the system to be in any one microstates of E3 = %6.4f", PE_3);
printf("\nThe probability for the system to be in ground state = %5.3f", P0);

// Result
// The probability for the system to be in any one microstates of E3 = 0.1236
// The probability for the system to be in ground state = 0.457 