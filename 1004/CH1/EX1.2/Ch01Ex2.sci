// Scilab Code Ex1.2 Relative Speed of spaceships: Pg: 20 (2008)
c = 1;    // For the sake of simplicity, assume c = 1, m/s
u = 0.9*c;    // Velocity of approach of spaceship A towards spaceship B, m/s
v = -0.9*c;    // Velocity of approach of spaceship B towards spaceship A, m/s
V = (u - v)/(1 - (u*v)/c^2);    // Velocity Addition Rule giving relative speed of approach of spaceships, m/s
printf("\nThe relative speed of B w.r.t. A = %5.3fc", V);
// Result 
// The relative speed of B w.r.t. A = 0.994c 