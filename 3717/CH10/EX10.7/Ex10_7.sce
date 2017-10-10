// Ex10_7  Page:213 (2014)
clc;clear;
a = 0.424e-09;    // Lattice parameter of cubic crystal, m
p = 2; q = %inf; r = 1; // Coefficients of intercepts along the x-, y- and z-axes
inv_p = 1/p;        // Reciprocal of the first coefficient
inv_q = 1/q;        // Reciprocal the second coefficient
inv_r = 1/r;        // Reciprocal the third coefficient
mul_fact = double(lcm(int32([p, r]))); // LCM of p and r
h = inv_p*mul_fact;    // Clear the first fraction
k = inv_q*mul_fact;    // Clear the second fraction
l = inv_r*mul_fact;    // Clear the third fraction
d_102 = a/(h^2+k^2+l^2)^(1/2);  // The interplanar spacing of (1 0 2) planes, m
printf("\nThe Miller indices are (%d %d %d) ", h, k, l);
printf("\nThe interplanar spacing = %6.4f nm", d_102/1e-09);

// Result
// The Miller indices are (1 0 2) 
// The interplanar spacing = 0.1896 nm 