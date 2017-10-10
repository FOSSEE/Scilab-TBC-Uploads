// Example 15_2
clc;funcprot(0);
// Given data
CH_4=1.00;// kgmole of methane
C_3H_8=3.00;// kgmoles of propane

// Solution
n=1+(3*(3));// Carbon balance
m=4+(3*(8));// Hydrogen balance
printf("\nThe hydrocarbon fuel model for this mixture is C_%2.0fH_%2.0f.",n,m);
