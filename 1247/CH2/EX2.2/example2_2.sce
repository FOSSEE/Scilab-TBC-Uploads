clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.2
// Page 17
printf("Example 2.2, Page 17 \n \n");

// solution

// CuSO4.5H2O
M1 = 159.5 // [g] (molar mass of CuSO4)
M2 = 159.5+5*(2+16) // (molar mass of CuSO4.5H2O)
m = 499
n = m/M2 //[mol]
printf("In the formula CuSO4.5H2O, the moles of CuSO4 is one hence, \n the equivalent moles of CuSO4 in the crystal is "+string(n)+".")
