clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.4
// Page 18
printf("Example 2.4, Page 18 \n \n");

// solution

// BaCl2
M = 137.3+2*35.5 // [g] (molar mass of BaCl2)
m = 416.6 // [g]
n = m/M // [mol]
N = n*6.022*10^23 // (no. of atoms)
printf("Atoms present in 416.6 g BaCl2 = "+string(N)+"")
