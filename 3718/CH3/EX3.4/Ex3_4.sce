//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 4
clc;

//Declaration of Variables
delta_s = -20.7        // cal per deg per mol
delta_h = -67.37       // K cal
T = 25                 // deg C

// Solution
T = T + 273              // K
delta_g = delta_h - (T * delta_s * 10 ** -3)

mprintf("The change in free energy at 25deg C is: %.4f K cal per mol", delta_g)
