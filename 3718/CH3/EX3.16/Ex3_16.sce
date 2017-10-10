//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 16
clc;

//Declaration of Constant
R = 8.314         //in J per K mol

//Declaration of Variables
n = 5             // moles
T = 27            // C
V1 = 50.0         // L, Initial Volume
V2 = 1000         // L, Final Volume

//Solution
T = T + 273
d_G = 2.303 * n * R * T * log10(V1 / V2)
d_G = d_G / 1000
mprintf("The free energy change is :%.3f k J",d_G)
