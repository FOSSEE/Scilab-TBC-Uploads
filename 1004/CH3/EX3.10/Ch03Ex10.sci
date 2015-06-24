// Scilab code: Ex3.10 : Momentum of proton: Pg: 81 (2008)
U = 1.6e-010;    // Kinetic energy of proton, joule 
h = 6.624e-034;    // Planck's constant, J-s
m = 1.67e-027;    // mass of proton, kg
v = sqrt(2*U/m);    // Velocity of proton, m/s
p = m*v;    // Momentum of proton, kg m/s
printf("\nThe momentum of proton = %4.2e kgm/s", p);
// Result
// The momentum of proton = 7.31e-019 kgm/s 