// Scilab Code Ex1.19 Electron speed equivalent of twice its rest mass: Pg: 28 (2008)
m0 = 9.1e-031;    // Rest mass of an electron, kg
m = 2*m0;    // Mass of moving electron, kg
c = 3e+08;    // Speed of light, m/s
// As m = m0/sqrt(1 - (v/c)^2), Relativistic mass of electron, kg, solving for v, we have
v = sqrt(1 - (m0/m)^2)*c;    // Velocity of moving electron, m/s
printf("\nThe speed of electron so that its mass becomes twice its rest mass = %5.3e m/s", v);
// Result 
// The speed of electron so that its mass becomes twice its rest mass = 2.598e+008 m/s 

 