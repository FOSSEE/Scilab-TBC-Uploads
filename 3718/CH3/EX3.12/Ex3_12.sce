//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 12
clc;

//Declaration of Variables
d_g_25 = - 85.77        // k J, Free Energy at 25 C
d_g_35 = - 83.68        // k J, Free Energy at 35 C
Ti = 273 + 25               // K
Tf = 273 + 35               // K

// Solution
mprintf("Equating the entropy change at both the temperatures.\n")
mprintf(" (d_h + d_g_25) / Ti = (d_h + d_g_35) / Tf\n")
d_h = - 148
mprintf(" The change in enthalpy for the process at 30C is %d kJ", d_h)
