//Chapter 1: Structure and Bonding
//Problem: 18
clc;

//Declaration of Constants
e = 1.602 * 10 ** -19           // Charge of proton, C
m_p = 1.66 * 10 ** -27          // Mass of proton, kg
m_e = 9.1 * 10 ** -31           // Mass of electron, kg
h = 6.626 * 10 ** -34           // Plank's constant, J.sec

// Variable
V = 35                          // Acceleration potential, volt

// Solution
lamda_p = h / sqrt(2 * e * V * m_p)
lamda_e = h / sqrt(2 * e * V * m_e)

mprintf("The wavelength of electron when accelerated with same potential is %.3e m",lamda_e)
