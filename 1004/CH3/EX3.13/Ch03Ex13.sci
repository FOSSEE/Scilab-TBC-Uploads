// Scilab code: Ex3.13 : Kinetic energy of a proton:Pg: 82 (2008)
L = 1e-010;    // wavelength of proton, m
m = 1.67e-027;    // Mass of proton, kg
h = 6.624e-034;    // Plancks constant, joule second
// Since L = h/(m*v);    // wavelength of proton, m
v = h/m*L;    // Velocity of proton, m/s
v_k = h^2/(2*L^2*m);    // Kinetic energy of proton, joule
printf("\nThe kinetic energy of proton = %3.1e eV ", v_k/1.6e-019);
// Result
// The kinetic energy of proton = 8.2e-002 eV