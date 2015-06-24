clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.2
// Page 197
printf("Example 5.2, Page 197 \n \n");

// solution

// using table 5.1
// basis 1 kmol of methane
T1 = 303.15  // K
T2 = 523.15  // K
// using eq 5.17
H = 19.2494*(T2-T1) + 52.1135*10^-3*(T2^2-T1^2)/2 + 11.973*10^-6*(T2^3-T1^3)/3 - 11.3173*(T2^4-T1^4)*10^-9/4  // kJ
printf(" Heat added = "+string(H)+" kJ/kmol methane.")
