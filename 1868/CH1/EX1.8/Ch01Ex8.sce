// Scilab code Ex1.8: Pg 30 (2005)
clc; clear;
// For simplification assume velocity of light equal to unity
c = 1;                   // Velocity of light, m/s
v = 0.750*c;             // Velocity of spaceship A relative to S frame, m/s
u_x = (-0.850)*c;        // Velocity of spaceship B relative to S frame, m/s
// Using Lorentz velocity transformation
U_x = (u_x - v)/(1 - u_x*v/c^2);               // Velocity of spaceship B with respect to spaceship A, m/s
printf("\nVelocity of spaceship B with respect to spaceship A = %6.4fc m/s", U_x);

// Result
// Velocity of spaceship B with respect to spaceship A = -0.9771c m/s
