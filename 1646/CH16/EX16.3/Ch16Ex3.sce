// Scilab Code Ex16.3 : Page-821 (2011)
clc; clear;
p = 3; q = 4; r = %inf; // Coefficients of intercepts along three axes
p_inv = 1/p;        // Reciprocate the first coefficient
q_inv = 1/q;        // Reciprocate the second coefficient
r_inv = 1/r;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([p,q]))); // Find l.c.m. of m,n and p
m1 = p_inv*mul_fact;    // Clear the first fraction
m2 = q_inv*mul_fact;    // Clear the second fraction
m3 = r_inv*mul_fact;    // Clear the third fraction
printf("\nThe miller indices of the given planes are : (%d %d %d) ", m1,m2,m3);

// Result 
// The miller indices of the given planes are : (4 3 0)  
