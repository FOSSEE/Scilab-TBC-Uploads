// Scilab Code Ex1.14 Speed of an electron for an equivalent proton mass: Pg: 25 (2008)
c = 3e+08;    // Speed of light, m/s
m0 = 1;    // For convenience, rest mass of an electron is assumed to be unity
m = 2000*m0;    // Rest mass of a proton, units
// As m = m0/sqrt(1 - (v/c)^2), solving for v
v = sqrt(1 - (m0/m)^2)*c;    // Speed of the moving electron, m/s 
printf("\nThe speed of the moving electron = %4.2e m/s (approx.)", v);
// Result 
// The speed of the moving electron = 3.00e+008 m/s (approx.) 