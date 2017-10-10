//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 24
clc;

//Declaration of Variables
Ksp = 8 * 10 ** - 5               // Solubility product PbBr2
diss = 80 / 100                  // % dissociation

// Solution
S = (Ksp / 4) ** (1 / 3.0)          // Solubility is 100%
S_80 = S * (80 / 100.0)
S_per_g = S_80 * 367 - 1.621
mprintf("Solubility in gm per litre is %.3f gm / l",S_per_g)
