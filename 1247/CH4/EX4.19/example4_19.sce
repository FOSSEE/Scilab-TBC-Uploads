clear;
clc;

// Stoichiometry
// Chapter 4
// Material Balances involving Chemical Reaction


// Example 4.19
// Page 153
printf("Example 4.19, Page 153 \n \n");

// solution

m1 = (50/35.5)*312 //[mg/l]  Cl2 expressed as equivalent CaCO3
m2 = (50/48)*43.2 //[mg/l]  Sulphates as equivalent CaCO3
A = m1+m2 //[mg/l as CaCO3]    EMA in raw water
M1 = 550 // alkalinity of raw water
M2 = 50 // alkalinity of blend water
//let 100 l of raw water enters both ion exchangers
// balancing neutrilasion
x = 100*(M1-M2)/(A+M1) // raw water inlet to H2 ion echanger
printf(""+string(x)+" percent of total raw water is passed through the H ion exchanger.")
