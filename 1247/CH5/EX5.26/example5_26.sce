clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.26
// Page 260
printf("Example 5.26, Page 260 \n \n");

// solution

// 2C + 2O2 = 2CO2                  A
// 2H2 + O2 = 2H2O                  B
// C2H4 + 3O2 = 2CO2 + 2H2O         C
// A+B-C  gives
// 2C(g) + 2H2 = C2H4(g)            D
H = -2*393.51-2*241.82+1323.1  // kJ/mol
printf(" Heat of formation of Ethylene is "+string(H)+" kJ/mol.")
