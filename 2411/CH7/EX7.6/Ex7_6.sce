// Scilab Code Ex7.6: Page-378 (2008)
clc; clear;
// For first set (3, 2, 2)
m = 3; n = 2; p = 2; // Coefficients of intercepts along three axes
m_inv = 1/m;        // Reciprocate the first coefficient
n_inv = 1/n;        // Reciprocate the second coefficient
p_inv = 1/p;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([m,n,p]))); // Find l.c.m. of m,n and p
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe plane (%d %d %d) has intercepts %da, %db and %dc on the three axes.", m, n, p, m1, m2, m3);
// For second set (1 1 1)
m = 1; n = 1; p = 1; // Coefficients of intercepts along three axes
m_inv = 1/m;        // Reciprocate the first coefficient
n_inv = 1/n;        // Reciprocate the second coefficient
p_inv = 1/p;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([m,n,p]))); // Find l.c.m. of m,n and p
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe plane (%d %d %d) has intercepts a, b and c on the three axes.", m, n, p);

// Result
// The plane (3 2 2) has intercepts 2a, 3b and 3c on the three axes.
// The plane (1 1 1) has intercepts a, b and c on the three axes. 