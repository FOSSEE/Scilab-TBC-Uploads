//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 17
clc;

//Declaration of Variables
d_H_n = - 51.46        // k J/mol, neutralization
d_H_i = - 57.1         // k J/mol, ionization

//Solution
d_H = - d_H_i + d_H_n

mprintf("The head of ionization for NH4OH is %.2f kJ / mol", d_H)
