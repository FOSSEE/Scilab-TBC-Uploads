clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.29
// Page 261
printf("Example 5.29, Page 261 \n \n");

// solution

// basis 1 kg motor spirit
G = 141.5/(131.5+64)
// r = C/H
r = (74+15*G)/(26-15*G)
C = r/6.605 // C content of motor spirit
H2 = 1-C
O2req = C+H2
Hf = 44050-27829-18306 // kJ/kg
printf(" Heat of formation of motor spirit = "+string(Hf)+" kJ/kg.")
