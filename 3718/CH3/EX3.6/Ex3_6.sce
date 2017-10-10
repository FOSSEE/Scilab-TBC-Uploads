//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 6
clc;

//Declaration of Variables
d_h_acetylene = 230       // kJ per mol
d_h_benzene = 85          // kJ per mol
T = 298                   // K

// Solution
d_h = d_h_benzene - 3 * d_h_acetylene

mprintf("The enthalpy change for the reaction is: %d kJ/mole", d_h)
