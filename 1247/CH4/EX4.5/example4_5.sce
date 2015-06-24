clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.5
// Page 121
printf("Example 4.5, Page 121 \n \n");

// solution

v = 1 //[l] water (basis)
// 1 mol (100mg) CaCO3 gives 1 mol (56) Cao
// use table 3.3 and eg 3.9
x = 56*390.6/100 //[mg/l] lime produced
printf("Amount of lime required = "+string(x)+" mg/l.")
