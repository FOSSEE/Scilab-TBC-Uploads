// Scilab Code Ex8.8: Page-174 (2010)
c = 1;    // For simplicity assume speed of light to be unity, m/s
me = 1;    // For simplicity assume mass of electron to be unity, kg
tau = 2.3e-006;    // Average lifetime of mu-meson in rest frame, s
t = 6.9e-006;    // Average lifetime of mu-meson in laboratory frame, s
// Fromm Time Dilation Rule, tau = t*sqrt(1-(v/c)^2), solving for v
v = sqrt(1-(tau/t)^2)*c;    // Speed of mu-meson in the laboratory frame, m/s
c
m0 = 207*me;    // Rest mass of mu-meson, kg
m = m0/sqrt(1-(v/c)^2);    // Relativistic variation of mass with velocity, kg
me = 9.1e-031;    // Mass of an electron, kg
c = 3e+008;    // Speed of light in vacuum, m/s
e = 1.6e-019;    // Energy equivalent of 1 eV, J/eV
T = (m*me*c^2 - m0*me*c^2)/e;    // Kinetic energy of mu-meson, J    
printf("\nThe speed of mu-meson in the laboratory frame = %6.4fc", v);
printf("\nThe effective mass of mu-meson = %3d me", m);
printf("\nThe kinetic energy of mu-meson = %5.1f MeV", T/1e+006);

// Result
// The speed of mu-meson in the laboratory frame = 0.9428c
// The effective mass of mu-meson = 620 me
// The kinetic energy of mu-meson = 211.9 MeV 