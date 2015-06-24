clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations

// Example 2.19

// Page 27
printf("Example 2.19, Page 27 \n \n");

// solution

m1 = 100 //[kg] TEA solution (basis)
m2 = 50 //[kg] TEA
M1 = 149 // molar mass of TEA
d = 1.05 //[kg/l]
V = m1/d // volume of 100 kg sol.
n = (m2/M1)*100 // [mol] NaCl
M = n/V //[M]
printf("Molarity of solution = "+string(M)+" M.")
