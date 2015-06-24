// Scilab Code Ex1.8 Increase in mass of water: Pg: 23 (2008)
c = 3e+08;    // Speed of light, m/s
T1 = 273;    // Initial temperature of water, K
T2 = 373;    // Final temperature of water, K
M = 1e+06;    // Mass of water, kg
C = 1e+03;    // Specific heat of water, cal/kg-K
J = 4.18;    // Joule's mechanical equivalent of heat, cal/joule
U = M*C*(T2 - T1)*J;    // Increase in energy of water, J
m = U/c^2;    // Increase in mass of water, kg
printf("\nThe increase in mass of water = %4.2e kg", m);
// Result 
// The increase in mass of water = 4.64e-006 kg 