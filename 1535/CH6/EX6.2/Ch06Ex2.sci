// Scilab Code Ex6.2 : Miller indices of the crystal plane : Page-134 (2010)
m = 3; n = 2; p = 1; // Coefficients of intercepts along three axes
m_inv = 1/m;        // Reciprocate the first coefficient
n_inv = 1/n;        // Reciprocate the second coefficient
p_inv = 1/p;        // Reciprocate the third coefficient
mul_fact = double(lcm(int32([m,n,p]))); // Find l.c.m. of m,n and p
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe required miller indices are : (%d %d %d) ", m1,m2,m3);

// Result 
// The required miller indices are : (2 3 6)  
