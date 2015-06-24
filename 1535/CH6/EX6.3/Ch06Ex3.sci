// Scilab Code Ex6.3 : Indices of lattice plane : Page-135 (2010)
m = 2; // Coefficient of intercept along x-axis
n = %inf;    // Coefficient of intercept along y-axis
p = 3/2;    // Coefficient of intercept along z-axis
m_inv = 1/m;    // Reciprocate m
n_inv = 1/n;    // Reciprocate n
p_inv = 1/p;    // Reciprocate p
mul_fact = 6;    // multiplicative factor, L.C.M. of 2 and 3 i.e. 6
m1 = m_inv*mul_fact;    // Clear the first fraction
m2 = n_inv*mul_fact;    // Clear the second fraction
m3 = p_inv*mul_fact;    // Clear the third fraction
printf("\nThe required miller indices are : %d, %d, %d ", m1,m2,m3);

// Result
// The required miller indices are : 3, 0, 4  