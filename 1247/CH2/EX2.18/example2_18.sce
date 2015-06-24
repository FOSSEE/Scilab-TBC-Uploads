clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations

// Example 2.18

// Page 26
printf("Example 2.18, Page 26 \n \n");

// solution

m1 = 100 //[kg] solution (basis)
m2 = 20 //[kg] NaCl
d = 1.127 //[kg/l]
V = m1/d // volume of 100 kg sol.
n = (m2/58.5)*100 // [mol] NaCl
M = n/V //[M]
v = 1 // valence of NaCl so,
N = M
m = n/(m1-m2) //[mol/kg]
printf("Molarity = "+string(M)+" M \nNormality = "+string(N)+" N \nMolality = "+string(m)+" mol/kg.")
