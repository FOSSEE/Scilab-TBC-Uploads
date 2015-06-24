clear;
clc;

// Stoichiometry
// Chapter 2
// Basic Chemical Calculations


// Example 2.14
// Page 24
printf("Example 2.14, Page 24 \n \n");

// solution

m = 100 //[kg] Lye (basis)
m1 = 73 //[kg] NaOH
M1 = 40 // NaOH
M2 = 62 // Na2O
p = (M2*m1)/(2*M1)
printf("percentage of Na2O in the solution is "+string(p)+".")
