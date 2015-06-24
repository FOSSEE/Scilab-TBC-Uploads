// Scilab Code Ex1.9 Ratio of rest mass and mass in motion: Pg:23 (2008)
c = 1;    // For convenience, speed of light is assumed to be unity, m/s
v = 0.5*c;    // Velocity of moving particle, m/s
// As m0 = m*sqrt(1 - (v/c)^2), and m0/m = rel_mass, we have
rel_mass = sqrt(1 - (v/c)^2);    // Ratio of rest mass and the moving mass
printf("\nThe ratio of rest mass and the mass in motion = %6.4f kg", rel_mass);
// Result 
// The ratio of rest mass and the mass in motion = 0.8660 kg 