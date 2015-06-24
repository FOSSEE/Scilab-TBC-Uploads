// Scilab code Exa1.4.3 : Estimate the density of nuclear matter : Page 34 (2011)
m = 40*(1.66e-027); // Mass of the nucleus, kg 
r0 = 1.2e-015; // Distance of the closest approach, m
A = 40; // Atomic mass of the nucleus
r = r0*A^(1/3); //Radius of the nucleus, m
V = 4/3*(%pi*r^3); // Volume of the nucleus, m^3
density = m/V; // Density of the nucleus, kg/m^3
printf("\nRadius of the nucleus: %3.1e m\nVolume of the nucleus: %5.3e m^3\nDensity of the nucleus: %3.1e kg/m^3",r,V,density);

// Result
// Radius of the nucleus: 4.1e-015 m
// Volume of the nucleus: 2.895e-043 m^3
// Density of the nucleus: 2.3e+017 kg/m^3