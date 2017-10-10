// Ex10_1  Page:211 (2014)
clc;clear;
m = 2; n = 3; p = 1; // Coefficients of intercepts along the crystallographic axes
m_inv = 1/m;        // Reciprocal of the first coefficient
n_inv = 1/n;        // Reciprocal the second coefficient
p_inv = 1/p;        // Reciprocal the third coefficient
mul_fact = double(lcm(int32([m,n,p]))); // LCM of m, n and p
i1 = m_inv*mul_fact;    // Clear the first fraction
i2 = n_inv*mul_fact;    // Clear the second fraction
i3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe Miller indices of the plane are (%d %d %d) ", i1, i2, i3);

// Result
// The Miller indices of the plane are (3 2 6)