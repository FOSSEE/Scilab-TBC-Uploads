clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.16
// Page 25
printf("Example 2.16, Page 25 \n \n");

// solution

M1 = 100 // CaCO3
v1 = 2 // valence of CaCO3
eqm1 = M1/v1 // equivalent mass of CaCO3
M2 = 162 // Ca(HCO3)2
v2 = 2
eqm2 = M2/v2
m = 500 // [mg/l] CaCO3
C1 = (eqm2/eqm1)*m*.6 // [mg/l] conc. of Ca(HCO3)2
M3 = 146.3 // Mg(HCO3)2
v3 = 2
eqm3 = M3/v3
C2 = (eqm3/eqm1)*m*.4 //[mg/l] conc. of Mg(HCO3)2
printf("Actual concentration of Ca(HCO3)2 in the sample water is "+string(C1)+" mg/l and of Mg(HCO3)2 is "+string(C2)+" mg/l.")
