//Chapter 1: Structure and Bonding
//Problem: 10
clc;

//Declaration of Constant
h = 6.625 * 10 ** -34           // Plank's constant, J.sec

// Variables
v = 6.5 * 10 ** 7               // Velocity of particle, m/s
lamda = 5 * 10 ** -11           // Wavelength, m

// Solution
P = h / lamda

mprintf("The momentum of the particle :%.2e kg m/s",P)
