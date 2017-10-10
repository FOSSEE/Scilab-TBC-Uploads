//Chapter 1: Structure and Bonding
//Problem: 9
clc;

//Declaration of Constants
c = 3 * 10 ** 8                 // Speed of light, m/sec
h = 6.626 * 10 ** -34           // Plank's constant, J.sec

// Variable
lamda = 650 * 10 ** -12         // Wavelength of radiation, m

// Solution
E = h * c / lamda

mprintf("Energy per photon :%.3e J",E)
