// Scilab Code Ex4.8: Page-237 (2008)
clc; clear;
c = 3e+008;    // Speed of light in vacuum, m/s
// Case 1: when velocity of firing is away from the earth
v = 0.5*c;    // Speed of the rocket away from the earth, m/s
u_prime = 0.8*c;    // Speed of the outgoing spaceship relative to earth, m/s
u = (u_prime+v)/(1+u_prime*v/c^2);    // Velocity of rocket moving away relative to the earth, m/s
printf("\nThe velocity of rocket moving away relative to the earth = %4.2f c = %4.2e m/s", u/c, u);
// Case 2: when velocity of firing is towards the earth
v = 0.5*c;    // Speed of the rocket moving towards the earth, m/s
u_prime = -0.8*c;    // Speed of the outgoing spaceship relative to earth, m/s
u = (u_prime+v)/(1+u_prime*v/c^2);    // Velocity of approaching rocket relative to the earth, m/s
printf("\nThe velocity of approaching rocket relative to the earth = %3.1f c = %3.1e m/s", u/c, u);

// Result
// The velocity of rocket moving away relative to the earth = 0.93 c = 2.79e+008 m/s
// The velocity of approaching rocket relative to the earth = -0.5 c = -1.5e+008 m/s 