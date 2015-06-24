// Scilab code Ex1.4: Pg 20 (2005)
clc; clear;
c = 3e+08;                   // Velocity of light, m/s
L_p = 435;                  // Proper altitude of spaceship, m
v = 0.970*c;                 // Velocity of spaceship, m/s
// Using length contracction formula,
L = L_p*sqrt(1 - (v/c)^2);                    // Observed altitude of spaceship, m
printf("Observed altitude of spaceship = %2d m", ceil(L));

// Result
// Observed altitude of spaceship = 106 m
