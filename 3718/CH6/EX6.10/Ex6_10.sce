//Chapter 6: Electrochemistry
//Problem: 10
clc;

//Declaration of Variables
T = 25        // C
Cu = 0.1      // M
Zn = 0.001    // M
Eo = 1.1      // V

// Solution
mprintf("Zn(s) | Zn+2 (0.001M) || Cu+2(0.1M) | Cu(s)\n")

Ecell = Eo + 0.0592 / 2 * log10(Cu / Zn)

mprintf(" The emf of a Daniel cell is %.4f V",Ecell)
