clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.7
// Page 208
printf("Example 5.7, Page 208 \n \n");

// solution

T1 = 298.15 // K
T2 = 775.15  //K
// using eq 5.17
Q = 28.839*(T2-T1)+2.0395*10^-3*(T2^2-T1^2)/2 + 6.9907*10^-6*(T2^3-T1^3)/3 - 3.2304*10^-9*(T2^4-T1^4)/4  // kJ/kmol
printf(" Heat content of 1 kmol of gas mixture at 298K = "+string(Q)+" kJ/kmol.")
