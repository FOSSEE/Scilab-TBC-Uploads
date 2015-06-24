clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.3
// Page 17
printf("Example 2.3, Page 17 \n \n");

// solution

// K2CO3
m = 117 // [kg] (wt of K)
Mk = 39 // [g] (at wt of K)
a = m/Mk // [kg atoms] 
// 1 mol of K2CO3 contains 2 atoms of K
n = a/2 // [kmol] (moles of K2CO3)
printf(" "+string(n)+" kmol of K2CO3 contains 117 kg of K.") 
