//Chapter 1: Structure and Bonding
//Problem: 7
clc;

//Declaration of Constants
m = 9.1 * 10 ** -31             // Mass of electron, kg
h = 6.626 * 10 ** -34           // Plank's constant, J.sec
pi = 3.141                      // Pi

// Variable
delta_x = 1 * 10 ** -10         // Uncertainty in Velocity, m

// Solution
delta_v = h / (4 * pi * m * delta_x)

mprintf( "Uncertainty in position of electron >= :%.1e m/s",delta_v)
