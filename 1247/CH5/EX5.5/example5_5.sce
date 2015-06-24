clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.5
// Page 206
printf("Example 5.5, Page 206 \n \n");

// solution

// basis 1kg of 20% NaOH sol
// referring to fig 5.4
C11 = 3.56  // kJ/kg.K   at 280.15K
C12 = 3.71  // kJ/kg.K   at 360.15K
C1m = (C11+C12)/2
H = 1*C1m*(360.15-280.15)  // kJ
printf(" Heat required to be added = "+string(H)+"kJ.")
