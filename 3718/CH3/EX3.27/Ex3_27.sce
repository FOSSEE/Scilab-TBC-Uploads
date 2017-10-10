//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 27
clc;

//Declaration of Variables
n_salt = 0.02     // mole
n_base = 0.2      // mole
pKb = 4.7

// Solution
pOH = pKb + log10(n_salt / n_base)
pH = 14 - pOH
mprintf("pH of a buffer solution is %.1f", pH)
