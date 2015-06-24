// Scilab Code Ex1.24 Relativistic speed form relativistic mass: Pg: 30 (2008)
c = 3e+08;    // Speed of light, m/s    
m0 = 1/2;    // Rest mass of the particle, MeV/c^2
m = 1/sqrt(2);    // Relativistic mass of the particle, MeV/c^2
// As m = m0/sqrt(1 - (v/c)^2), Relativistic mass of electron, kg, solving for v, we have
v = sqrt(1 - (m0/m)^2)*c;    // Relativistic velocity of particle, m/s
printf("\nThe relativistic velocity of particle = %4.2e m/s", v);
// Result 
// The relativistic velocity of particle = 2.12e+008 m/s 