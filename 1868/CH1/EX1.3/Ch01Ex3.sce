// Scilab code Ex1.3: Pg 20 (2005)
clc; clear;
c = 3e+08;                   // Velocity of light, m/s
L_p = 100;                  // Proper length of spaceship, m
v = 0.99*c;                 // Velocity of spaceship, m/s
// Using length contracction formula,
L = L_p*sqrt(1 - (v/c)^2);                    // Observed length of spaceship, m
printf("Observed length of spaceship = %2d m", L);

// Result
// Observed length of spaceship = 14 m
