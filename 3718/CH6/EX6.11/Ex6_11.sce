//Chapter 6: Electrochemistry
//Problem: 11
clc;

//Declaration of Variables
pH = 7        // O2
Eo = 1.229    // V
pO2 = 0.20    // bar

// Solution
mprintf("Nernst equation at 25C is,\n")
mprintf(" E = Eo - (0.0592 / 2) * log(1 / ([H+]^2 * [pO2]^ (1/2)))\n")

E = Eo - (0.0592 / 2) * log10(1.0 / (((10 ** (- 7)) ** 2) * (pO2 ** (1 / 2.0))))

mprintf(" The reduction potential for the reduction is %.3f V",E)

// The answer provided in the textbook is wrong
