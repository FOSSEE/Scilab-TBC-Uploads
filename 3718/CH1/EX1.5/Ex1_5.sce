//Chapter 1: Structure and Bonding
//Problem: 5
clc;

//Declaration of Constant
h = 6.626 * 10 ** -34           // Plank's constant,in J.sec

//Declaration of Variables
m = 10 * 10 ** -3               // Mass of the ball,in kg
v = 10 ** 5                     // Velocity of ball,in cm / sec

// Solution
lamda = (h * 10 ** 7) / (m * v)
mprintf("The Wavelength of iron ball is %.2e cm",lamda)
