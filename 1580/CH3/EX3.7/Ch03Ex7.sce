// Scilab Code Ex3.7 : Page-3.8 (2004)
clc;clear;
m = 1; n = 1/2; p = 3; // Coefficients of intercepts along three axes
m_inv = 1/m;        // Reciprocate the first coefficient
n_inv = 1/n;        // Reciprocate the second coefficient
p_inv = 1/p;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([1, 1, 3]))); // Find l.c.m. of 1, 1 and 3
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe required miller indices are : (%d %d %d) ", m1,m2,m3);

// Result 
// The required miller indices are : (3 6 1)
