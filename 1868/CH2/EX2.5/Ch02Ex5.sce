// Scilab code Ex2.5: Pg.49 (2005)
clc; clear;
u = 450;    // Velocity ofeach ball, m/s
m = 5;    // Mass of each ball, kg
c = 3e+08;     // Velocity of light, m/s
// Since (u/c)^2 << 1, therefore, substituting 1/sqrt(1 - (u/c)^2) = 1 + (1/2)*(u/c)^2
delta_M = m*(u/c)^2;   // Increase in the mass of balls, kg
printf("\nIncrease in the mass of the balls = %3.1fe-11 kg", delta_M*1e+11);

// Result
// Increase in the mass of the balls = 1.1e-11 kg
