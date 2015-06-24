// Scilab code Ex1.9: Pg 30 (2005)
clc; clear;
// For simplification assume velocity of light equal to unity
c = 1;                   // Velocity of light, m/s
v = 0.800*c;             // Velocity of motorcycle w.r.t stationary observer, m/s
U_x = 0.700*c;           // Velocity of ball in the reference frame of motorcyclist, m/s
// Using  inverse Lorentz velocity transformation
u_x = (U_x + v)/(1 + U_x*v/ c^2);                 // Velocity of ball relative to stationary observer, m/s
printf("\nVelocity of ball relative to stationary observer = %6.4fc m/s", u_x);

// Result
// Velocity of ball relative to stationary observer = 0.9615c m/s
