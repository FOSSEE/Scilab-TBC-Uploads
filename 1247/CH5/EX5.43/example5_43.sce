clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.43
// Page 297
printf("Example 5.43, Page 297 \n \n");

// solution

Hf = -285.82  // kJ/mol    of H2O
Hcryst = -4327.26-(-1387.08+10*Hf)
printf(" Heat of crystallization = "+string(Hcryst)+" kJ/mol.")
