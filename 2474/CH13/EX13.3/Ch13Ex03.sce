// Scilab code Ex13.3: Pg.638 (2008)
clc; clear;
G = 6.67e-11;    // Gravitational constant, N-m^2/kg^2
v = 2.5e+05;    // Velocity of sun. m/s
R = (28000*9.46e+15);    // Sun's orbital radius, m
// From Newton's law of gravitation, F = (G*M_s*M_G)/(R^2) & also centripetal force, F = (M_s*v^2)/R, equating these two equations & solving for M_G, we get
M_G = (R*(v^2))/G;    // Mass of galaxy, kg
printf("\nThe mass of the galaxy = %3.2e kg", M_G);

// Result
// The mass of the galaxy = 2.48e+041 kg 
