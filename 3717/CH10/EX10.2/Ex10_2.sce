// Ex10_2  Page:211 (2014)
clc;clear;
p = 2; q = 3/2; r = %inf; // Coefficients of intercepts along the x-, y- and z-axes
inv_p = 1/p;        // Reciprocal of the first coefficient
inv_q = 1/q;        // Reciprocal the second coefficient
inv_r = 1/r;        // Reciprocal the third coefficient
mul_fact = double(lcm(int32([p, q*2]))); // LCM of p and twice of q
m1 = inv_p*mul_fact;    // Clear the first fraction
m2 = inv_q*mul_fact;    // Clear the second fraction
m3 = inv_r*mul_fact;    // Clear the third fraction
printf("\nThe Miller indices of the plane parallel to z-axis are (%d %d %d) ", m1, m2, m3);

// Result
// The Miller indices of the plane parallel to z-axis are (3 4 0)  