// Scilab Code Ex1.13 Velocity of one atomic mass unit: Pg: 24 (2008)
c = 1;    // For convenience, speed of light is assumed to be unity, m/s
m0 = 1;    // For convenience, rest mass is assumed to be unity
// Here 2*m0*c^2 = m*c^2 - m0*c^2 = KE which gives
m = 3*m0;    // Atomic mass in motion, kg
// As m = m0/sqrt(1 - (v/c)^2), solving for v
v = sqrt(1 - (m0/m)^2)*c;    // Velocity of one atomic mass, m/s 
printf("\nThe velocity of one atomic mass = %5.3fc", v);
// Result 
// The velocity of one atomic mass = 0.943c 