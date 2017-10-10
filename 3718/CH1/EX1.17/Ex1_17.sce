//Chapter 1: Structure and Bonding
//Problem: 17
clc;

//Declaration of Constants
m = 9.1 * 10 ** -31             // Mass of electron, kg
h = 6.626 * 10 ** -34           // Plank's constant, J.sec
c = 3 * 10 ** 8                 // Speed of light, m/sec

// Variables
v = 6.46 * 10 ** 5              // Velocity of electron, m/sec
lamda = 200 * 10 ** -9          // Wavelength of light, m

// Solution
E = (h * c) / lamda
ke = m * v ** 2
w = E - ke

mprintf("The Workfunction of the metal surface is %.3e J",w)
