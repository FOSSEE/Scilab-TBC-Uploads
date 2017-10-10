//Chapter 1: Structure and Bonding
//Problem: 12
clc;

//Declaration of Constant
h = 6.626 * 10 ** -34           // Plank's constant, J.sec

// Variables
m = 150                         // Weight of ball, gm
v = 50                          // Velocity, m/sec

lamda = h / (m * v * 10 ** -8)
mprintf("Wavelength of ball :%.3e m\n",lamda)
mprintf(" Its wavelength is so short that it does not fall in visible range, so we cannot observe it.")
