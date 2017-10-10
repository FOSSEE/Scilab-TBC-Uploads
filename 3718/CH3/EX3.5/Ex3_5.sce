//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 5
clc;

//Declaration of Variables
wt = 1              // g
delta_h = 149       // joules

// Solution
delta_h_f = delta_h * (10 * 12 + 8 * 1)
delta_h_f_c=delta_h_f * 10 ** -3

mprintf("Enthalpy of fusion of naphthalene:%.3f kJ/mol", delta_h_f_c)
