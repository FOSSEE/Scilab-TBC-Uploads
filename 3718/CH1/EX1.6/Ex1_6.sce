//Chapter 1: Structure and Bonding
//Problem: 6
clc;

//Declaration of Constant
h = 6.626 * 10 ** -34           // Plank's constant,in J.sec

// Variable
lamda = 2 * 10 ** -10           // wavelength,in m

// Solution
p = h / lamda

mprintf("The momentum of the particle is :%.2e kg m/s",p)
