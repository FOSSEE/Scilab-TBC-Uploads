//Chapter 1: Structure and Bonding
//Problem: 14
clc;

//Declaration of Constant
t_v = 1.3 * 10 ** 15            // Threshold freq. Pt, /sec
h = 6.626 * 10 ** -34           // Planck's constant, J.sec


// Solution
mprintf("The threshold frequency is the lowest frequency that photons may possess to produce the photoelectric effect.\n")
E = h * t_v
mprintf(" The energy corresponding to this frequency is the minimum energy = %.2e erg",E)
