//Chapter 1: Structure and Bonding
//Problem: 11
clc;

//Declaration of Constants
c = 3 * 10 ** 8                 // Speed of light, m/sec
m = 9.1 * 10 ** -31             // Mass of electron, kg
h = 6.626 * 10 ** -34           // Plank's constant, J.sec

// Variables
lamda = 200 * 10 ** -7          // Wavelength, cm
wf = 6.95 * 10 ** -12           // Work function, erg

// Solution
E = (h * c) * 10 ** 9 / lamda

mprintf("Energy of photon :%.3e erg\n",E)

ke = E - wf

v = sqrt((2 * ke) / (m * 10 ** 3)) * 10 ** -2

mprintf(" The maximum velocity of electron :%.3e m/sec",v)
