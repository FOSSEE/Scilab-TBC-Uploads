clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.49
// Page 302
printf("Example 5.49, Page 302 \n \n");

// solution
Hmix = 896
M1 = 88  // molar mass of n-amyl alcohol
M2 = 78  // molar mass of benzene
B = .473*M2
A = .527*M1
Ha = Hmix/A
Hb = Hmix/B
printf(" Integral heat of sol of n-amyl alcohol = "+string(Ha)+" kJ/kg n-amyl alcohol and of benzene = "+string(Hb)+" kJ/kg benzene.")
