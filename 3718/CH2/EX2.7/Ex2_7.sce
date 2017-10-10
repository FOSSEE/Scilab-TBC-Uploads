//Chapter 2: Spectroscopy and Photochemistry
//Problem: 7
clc;

//Declaration of Constants
pi = 3.141                  // pi
c = 3 * 10 ** 10            // speed of light, cm /s
h = 6.626 * 10 ** -34       // Plank's constant, J.sec
Na = 6.022 * 10 ** 23       // Mole constant, /mol

//Declaration of Variables
d = 20.7                    // Interspacing, /cm
m1 = 1                      // Mass of H, g / mol
m2 = 35.5                   // Masso f Cl, g / mol

// Solution
B = 0.1035 * 10 ** 2        // /m
I = h / (8 * pi ** 2 * B * c)
mu = m1 * m2 / ((m1 + m2) * Na)
mu = mu * 10 ** -3
r = sqrt(I / mu)

mprintf("The intermolecular distance of HCl is %.3e m",r)
// The answer provided in the textbook is wrong
