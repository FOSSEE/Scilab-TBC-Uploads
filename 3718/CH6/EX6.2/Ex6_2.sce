//Chapter 6: Electrochemistry
//Problem: 2
clc;

//Declaration of Variables
T = 25          // C
Cu = 0.1        // M
Zn = 0.001      // M
Eo = 1.1

// Solution
E = Eo + 0.0296 * log10(Cu / Zn)
mprintf("The emf of Daniell cell is %.4f V",E)
