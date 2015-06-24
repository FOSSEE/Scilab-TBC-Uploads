clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.3
// Page 198
printf("Example 5.3, Page 198 \n \n");

// solution

// basis 1 kmol methane at 25 bar
Pc = 46.04  // bar
Tc = 190.5  // K
Pr = 25/Pc
// H-Ho = intgr(from303.15 to 523.15){CmpR dT}
// solving it by simpson's rule
HE = 255.2  // kJ/kmol
H = 9175.1+HE
printf(" Heat added = "+string(H)+" kJ/kmol of methane.")
