// Scilab Code Ex1.7 Relativistic variation of mass with speed: Pg: 22 (2008)
m0 = 1e-024;    // Mass of a particle, kg
v = 1.8e+08;    // Speed of the particle, m/s
c = 3e+08;    // Speed of light, m/s
m = m0/sqrt(1-(v/c)^2);    // Mass of the moving particle, kg
printf("\nThe mass of moving particle = %4.2e kg", m);
// Result 
// The mass of moving particle = 1.25e-024 kg   