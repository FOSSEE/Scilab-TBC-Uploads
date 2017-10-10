//Chapter 1: Structure and Bonding
//Problem: 16
clc;

//Declaration of Constants
m = 9.1 * 10 ** -31             // Mass of electron, kg
h = 6.626 * 10 ** -34           // Plank's constant, J.sec

// Variable
lamda = 4.8 * 10 ** -9          // Wavelength of electron, m

// Solution
ke = ((h / lamda) ** 2) / (2 * m)

mprintf("The Kinetic Energy of moving electron is %.2e J",ke)
