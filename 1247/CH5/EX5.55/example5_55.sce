clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.55
// Page 311
printf("Example 5.55, Page 311 \n \n");

// solution

Hf1 = -80.14
Hf2 = -46.11
Hsol = Hf1-Hf2
Hg = Hsol*1000*2/17.0305
printf(" Heat generated for making 2 percent solution = "+string(Hg)+" kJ/100 kg sol.")
