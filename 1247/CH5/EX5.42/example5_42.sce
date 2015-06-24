clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.42
// Page 297
printf("Example 5.42, Page 297 \n \n");

// solution

Hsol = 62.86  // kJ/mol solute
Mcrystal = 286.1414
Hcry = Hsol*1000/Mcrystal  // kJ/kg solute
printf(" Heat of crystallization of 1 kg crystal is "+string(Hcry)+" kJ.")
