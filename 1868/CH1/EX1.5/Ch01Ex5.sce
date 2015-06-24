// Scilab code Ex1.5: Pg 20 (2005)
clc; clear;
c = 3e+08;                   // Velocity of light, m/s
L_p = 50;                   // Proper distance between points x & y of spaceship, m
v = 0.950*c;                 // Velocity of spaceship, m/s
// Using length contracction formula,
L = L_p*sqrt(1 - (v/c)^2);                    // Observed distance between points x & y of spaceship, m
printf("\nObserved distance between points x and y of spaceship = %4.1f m", L);
printf("\nThe spaceship will get contracted in the direction of motion");

// Result
// Observed distance between points x and y of spaceship = 15.6 m
// The spaceship will get contracted in the direction of motion 
