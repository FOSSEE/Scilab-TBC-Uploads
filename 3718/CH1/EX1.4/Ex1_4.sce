//Chapter 1: Structure and Bonding
//Problem: 4
clc;

//Declaration of Constants
c = 3 * 10 ** 8                 // Speed of light,in m/sec
m = 9.1 * 10 ** -31             // Mass of electron,in kg
h = 6.626 * 10 ** -34           // Plank's constant,in J.sec

//Declaration of Variable
ke = 4.55 * 10 ** -25           // Kinetic Energy,in J

// Solution
v = sqrt(ke * 2 / m)

lamda = h / (m * v)

mprintf("The de Broglie wavelength is : %.2e m',lamda)
