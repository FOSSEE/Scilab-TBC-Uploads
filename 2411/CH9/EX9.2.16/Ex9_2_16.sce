// Scilab Code Ex9.2.16: Page-420(2008)
clc; clear;
m = 3; n = 3; p = 2; // Coefficients of intercepts along three axes
m_inv = 1/m;        // Reciprocate the first coefficient
n_inv = 1/n;        // Reciprocate the second coefficient
p_inv = 1/p;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([m,n,p]))); // Find l.c.m. of m,n and p
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe miller indices for planes with set of intercepts (%da, %db, %dc) are (%d %d %d) ", m, n, p, m1, m2, m3);
m = 1; n = 2; p = %inf; // Coefficients of intercepts along three axes
m_inv = 1/m;        // Reciprocate the first coefficient
n_inv = 1/n;        // Reciprocate the second coefficient
p_inv = 1/p;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([m,n]))); // Find l.c.m. of m,n and p
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe miller indices for planes with set of intercepts (%da, %db, %dc) are (%d %d %d) ", m, n, p, m1, m2, m3);

// Result
// The miller indices for planes with set of intercepts (3a, 3b, 2c) are (2 2 3) 
// The miller indices for planes with set of intercepts (1a, 2b, Infc) are (2 1 0)  