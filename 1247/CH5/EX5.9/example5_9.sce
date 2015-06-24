clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.9
// Page 220
printf("Example 5.9, Page 220 \n \n");

// solution

// (a)
T = 305.15 //K
Pv1 = 10^(4.0026-(1171.530/(305.15-48.784)))  // bar
// (b)
T = 395.15 
Pv2 = 10^(3.559-(643.748/(395.15-198.043)))   // bar
printf(" (a) \n \n V.P. of n-hexane at 305.15K = "+string(Pv1)+" bar. \n \n \n (b) \n \n V.P. of water at 395.15K = "+string(Pv2)+" bar.")
