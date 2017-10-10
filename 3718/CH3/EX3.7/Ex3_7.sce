//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 7
clc;

//Declaration of Constant
d_h_vap = 2.0723         // kJ per g
Tb = 373                     // K

// Solution
d_h_vap = d_h_vap * 18            // kJ per mol
d_s = d_h_vap / Tb
d_g = d_h_vap - Tb * d_s
d_s = d_s * 1000

mprintf("The Entropy change is: %.1f J / mol / K\n",d_s)
mprintf(" The Free Energy change is:%d kJ/mol", d_g)
