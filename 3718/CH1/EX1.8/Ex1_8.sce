//Chapter 1: Structure and Bonding
//Problem: 8
clc;

//Declaration of Constants
h = 6.626 * 10 ** -34           // Plank's constant, J.sec
pi = 3.141                      // Pi

// Variables
m = 10 ** -11                   // Mass of particle, g
v = 10 ** -4                    // Velocity of particle, cm/sec
delta_v = 0.1 / 100             // Uncertainty in velocity

// Solution
delta_v = v / 1000
delta_x = (h * 10 ** 7) / (4 * pi * delta_v * m)

printf("Uncertainty in position >=%.3e cm",delta_x)
