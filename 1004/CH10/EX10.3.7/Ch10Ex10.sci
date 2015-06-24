// Scilab Code Ex10.7 Mass of Yukawa particle: Pg: 222 (2008)
h = 6.626e-034;    // Reduced Planck's constant, Js
e = 1.6e-019;    // Charge on an electron, coulomb
R0 = 1.2e-015;    // Nuclear radius constant, m
R = 2*R0;    // Range of nuclear force, m
v = 1e+08;    // Speed of the particle, m/s
S = R;    // Distance travelled by particle within the nucleus, m
dt = S/v;    // time taken by the particle to travel across the nucleus, s
// From Heisenberg's uncertainty principle, dE.dt = h_bar, solving for dE
dE = h/(1e+06*e*dt);    // Energy of Yukawa paeticle, MeV
m = dE/0.51;    // Approximate mass of Yukawa particle, electronic mass unit
printf("\nThe mass of Yukawa particle = %3d me", m);
// Result 
// The mass of Yukawa particle = 338 me 