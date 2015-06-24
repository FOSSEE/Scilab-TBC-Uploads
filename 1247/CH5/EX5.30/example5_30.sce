clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.30
// Page 267
printf("Example 5.30, Page 267 \n \n");

// solution

// basis 1 kmol of styrene
dH = 241749-189398  // kJ/mol
Cmpn = dH/(600-298.15)  // kJ/kmol K
printf(" Mean heat capacity between 600K and 298.15 K is "+string(Cmpn)+" kJ/kmol K.")
