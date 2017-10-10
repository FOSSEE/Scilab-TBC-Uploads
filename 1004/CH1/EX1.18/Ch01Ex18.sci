// Scilab Code Ex1.18 Electrons accelerated to relativistic speeds: Pg: 27 (2008)
U = 1e+09*1.6e-019;    // Kinetic energy of the electrons, J
c = 3e+08;    // Speed of light, m/s
// As U = m*c^2, solving for m
m = U/c^2;    // Mass of moving electrons, kg
m0 = 9.1e-031;    // Rest mass of an electron, kg
mass_ratio = m/m0;    // Ratio of a moving electron mass to its rest mass 
// As m = m0/sqrt(1 - (v/c)^2), Relativistic mass of electron, kg, solving for v, we have
v = sqrt(1 - (m0/m)^2)*c;    // Velocity of moving electron, m/s
vel_ratio = v/c;    // Ratio of electron velocity to the velocity of light
U0 = m0*c^2;    // Rest mass energy of electron, J
ene_ratio = U/U0;    // Ratio of electron energy to its rest mass energy
printf("\nThe ratio of a moving electron mass to its rest mass %4.2e", mass_ratio);
printf("\nThe ratio of electron velocity to the velocity of light = 1 - %5.3e", (1-vel_ratio^2)/2);
printf("\nThe ratio of electron energy to its rest mass energy = %5.3e", ene_ratio);
// Result 
// The ratio of a moving electron mass to its rest mass 1.95e+003
// The ratio of electron velocity to the velocity of light = 1 - 1.310e-007
// The ratio of electron energy to its rest mass energy = 1.954e+003