// Scilab Code Ex1.1 Relative Speed of approach: Pg:20 (2008)
c = 1;    // For the sake of simplicity, assume c = 1, m/s
u = 0.87*c;    // Velocity of approach of spaceship A towards spaceship B, m/s
v = -0.63*c;    // Velocity of approach of spaceship B towards spaceship A, m/s
V = (u - v)/(1 - (u*v)/c^2);    // Velocity Addition Rule giving relative speed of approach of particles, m/s
printf("\nThe relative speed of approach of particles = %6.4fc", V);
// Result 
// The relative speed of approach of particles = 0.9689c 