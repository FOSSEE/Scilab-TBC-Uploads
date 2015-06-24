// Scilab Code Ex1.3 Relativistic length contraction: Pg: 20 (2008)
L0 = 1;    // Actual length of the metre stick, m
rel_mass = 3/2;    // Relative mass of stick w.r.t. rest its mass
// As m = m0/sqrt(1 - (v/c)^2) and L =  L0*sqrt(1 - (v/c)^2)
// Thus L/m = (L0/m0)*(1 - (v/c)^2), solving for L
// L = (m0/m)*L0 i.e.
L = 1/rel_mass*L0;    // Apparent length of the metre rod, m
printf("\nThe apparent length of the metre rod = %5.3f m", L);
// Result 
// The apparent length of the metre rod = 0.667 m