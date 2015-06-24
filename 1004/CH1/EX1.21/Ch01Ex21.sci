// Scilab Code Ex1.21 Fractional speed of electron: Pg:29 (2008)
m0 = 9.1e-031;    // Rest mass of an electron, kg
c = 3e+08;    // Speed of light, m/s
E = 0.5*1e+06*1.6e-019;    // Kinetic energy of electron, J
// As E = (m - m0)*c^2, solving for m
m = E/c^2+m0;    // Mass of moving electron, kg
// As m = m0/sqrt(1 - (v/c)^2), Relativistic mass of electron, kg, solving for v, we have
v = sqrt(1 - (m0/m)^2)*c;    // Velocity of moving electron, m/s
printf("\nThe speed of electron relative to speed of light = %5.3f", v/c);
// Result 
// The speed of electron relative to speed of light = 0.863 