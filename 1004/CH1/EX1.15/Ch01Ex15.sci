// Scilab Code Ex1.15 Speed at total energy twice the rest mass energy: Pg: 25 (2008)
c = 1;    // Speed of light is assumed to be unity, m/s
m0 = 1;    // For convenience, rest mass of the particle is assumed to be unity, kg
m = 2*m0;    // Mass of the moving particle when m*c^2 = 2*m0*c^2, kg
// As m = m0/sqrt(1 - (v/c)^2), solving for v
v = sqrt(1 - (m0/m)^2)*c;    // Speed of the moving particle, m/s 
printf("\nThe speed of the moving  particle = %5.3fc", v);
// Result 
// The speed of the moving  particle = 0.866c 