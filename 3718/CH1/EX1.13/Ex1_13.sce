//Chapter 1: Structure and Bonding
//Problem: 13
clc;

//Declaration of Constant
h = 6.626 * 10 ** -34           // Plank's constant, J.sec
pi = 3.141                      // Pi

// Variables
m = 0.1                         // Mass of base ball, kg
delta_x = 10 ** -10             // Uncertainty in position, m

// Solution
delta_v = h / (4 * pi * m * delta_x)

mprintf("Uncertainty in velocity >= %.2e m/s",delta_v)
