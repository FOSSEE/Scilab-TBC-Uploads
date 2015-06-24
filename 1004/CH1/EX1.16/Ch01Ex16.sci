// Scilab Code Ex1.16 Relative velocity and mass: Pg:26 (2008)
c = 3e+08;    // Speed of light, m/s
u = 2e+08;    // Speed of first particle, m/s
v = -2e+08;    // Speed of second particle, m/s
u_prime = (u - v)/(1 - u*v/c^2);    // Velocity addition rule giving relative velocity, m/s
m0 = 3e-025;    // Rest mass of each particle, kg
m = m0/sqrt(1 - (u_prime/c)^2);    // Mass of one particle relative to the other, kg
printf("\nThe relative speed of one particle w.r.t the other = %5.3e m/s", u_prime);
printf("\nThe mass of one particle relative to the other = %3.1e kg", m);
// Result 
// The relative speed of one particle w.r.t the other = 2.769e+008 m/s
// The mass of one particle relative to the other = 7.8e-025 kg 
 