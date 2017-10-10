//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 23
clc;

//Declaration of Variables
Ti = 25           // C
S = 0.00179       // g / L

// Solution
S =S / 170        // mol / L
Ksp = S ** 2
mprintf("Solubility product at 25 C is %.4e mol square L square",Ksp)
