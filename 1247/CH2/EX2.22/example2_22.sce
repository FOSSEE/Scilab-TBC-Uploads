clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations

// Example 2.22

// Page 39
printf("Example 2.22, Page 39 \n \n");

// solution

n = 100 // [mol] air (basis)
n1 = 21 //[mol] O2
n2 = 78 //[mol] N2
n3 = 1 //[mol] Ar
M1 = 31.9988 // O2
M2 = 28.0134 // N2
M3 = 39.948 // Ar
m1 = n1*M1
m2 = n2*M2
m3 = n3*M3
Ma = (m1+m2+m3)/n
printf("average molar mass of air is "+string(Ma)+" g.")
