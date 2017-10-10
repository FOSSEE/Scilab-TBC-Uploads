//Chapter 1: Structure and Bonding
//Problem: 15
clc;

//Declaration of Constants
m = 9.1 * 10 ** -31             // Mass of electron, kg
h = 6.626 * 10 ** -34           // Plank's constant, J.sec
e = 1.602 * 10 ** -19           // Charge of electron, C

// Variable
v = 1.87 * 10 ** 9              // Velocity of electron, m/sec

// Solution
V = m * v ** 2 / (2 * e)
lamda = h / (m * v)

mprintf("The voltage is %.2e Volts\n",V)
mprintf(" The de Broglie wavelength is %.2e m",lamda)
