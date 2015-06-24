// Scilab Code Ex16.2 : Page-820 (2011)
clc; clear;
p = 2; q = 3; r = -4; // Coefficients of intercepts along three axes
p_inv = 1/p;        // Reciprocate the first coefficient
q_inv = 1/q;        // Reciprocate the second coefficient
r_inv = 1/r;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([p,q,abs(r)]))); // Find l.c.m. of m,n and p
m1 = p_inv*mul_fact;    // Clear the first fraction
m2 = q_inv*mul_fact;    // Clear the second fraction
m3 = r_inv*mul_fact;    // Clear the third fraction
printf("\nThe miller indices of laticce plane are : (%d %d %d) ", m1,m2,m3);

// Result 
// The miller indices of laticce plane are : (6 4 -3)  
