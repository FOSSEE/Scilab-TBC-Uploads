// Scilab Code Ex10.8: Page-512 (2011)
clc;clear;
q1 = 8e-007;....// First Charge, C
q2 = -8e-007;....// Second Charge, C
r = 15e-002;....// Distance between the two charges, m
k = 9e+009; // Coulomb's constant, N-metre-square/coulomb-square
E1 = k*q1/r^2;....// Electric field strength due to charge 8e-007 C
printf("\nThe electric field strength at midpoint = %3.1e N/C", E1); 
E2 = abs(k*q2/r^2);....// Electric field strength -8e-007 C 
printf("\nThe electric field strength at midpoint = %3.1e N/C", E2); 
// Total electric field strength at the mid-point is
E = E1+E2;      // Net electric field at mid point, N/C
printf("\nThe net electric field strength at midpoint = %3.1e N/C", E);

// Result
// The electric field strength at midpoint = 3.2e+05 N/C
// The electric field strength at midpoint = 3.2e+05 N/C
// The net electric field strength at midpoint = 6.4e+05 N/C 
