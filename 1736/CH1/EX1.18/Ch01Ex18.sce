// Scilab Code Ex 1.18 Page-32 (2006)
clc; clear;
p = 3; q = -3; r = 3/2; // Coefficients of intercepts along three axes
h = 1/p;        // Reciprocate the first coefficient
k = 1/q;        // Reciprocate the second coefficient
l = 1/r;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([p,q,r]))); // Find l.c.m. of m,n and p
h = h*mul_fact;    // Clear the first fraction
k = k*mul_fact;    // Clear the second fraction
l = l*mul_fact;    // Clear the third fraction
printf("\nThe required miller indices are : (%d %d %d) ", h,k,l);

// Result 
// The required miller indices are : (1 -1 2)  
