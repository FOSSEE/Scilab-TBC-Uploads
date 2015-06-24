// Scilab code Ex1.8: Pg.32 (2008)
clc; clear;
// For simplicity assume velocity of light be unity
c = 1;    // Velocity of light, m/s
t = 21;    // Gestation period of elephant in S' frame, months
Beta = 0.75;    // Boost factor = v/c
gama = 1/sqrt(1-(Beta^2));    // Relativistic factor
delta_t_1 = gama*t;    // Gestation period of elephant in earth, S' frame, months
delta_x = gama*Beta*c*t;    // Distance moved by spaceship in s
delta_t_2 = delta_x/c;    // Time taken by radio sigal to travel delta_x distance, months
delta_t = delta_t_1+delta_t_2;    // Time taken by good news to reach earth after launch, months
printf("\nThe good news will arrive at earth at = %4.1f months after launch", delta_t);

// Result
// The good news will arrive at earth at = 55.6 months after launch 