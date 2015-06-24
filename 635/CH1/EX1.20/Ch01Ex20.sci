// Scilab Code Ex 1.20 Indices of lattice plane: Page-25 (2010)
m = 10000; // Coefficient of intercept along x-axis, can be taken as some large value
n = 2;    // Coefficient of intercept along y-axis
p = 1/2;    // Coefficient of intercept along z-axis
m_inv = 1/m;    // Reciprocate m
n_inv = 1/n;    // Reciprocate n
p_inv = 1/p;    // Reciprocate p
mul_fact = n;    // multiplicative factor
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe required miller indices are : %d, %d, %d ", m1,m2,m3);

// Result 
// The required miller indices are :
//     0, 1, 4
