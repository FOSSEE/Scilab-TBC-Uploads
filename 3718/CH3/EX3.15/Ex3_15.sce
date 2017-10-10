//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 15
clc;

//Declaration of Constant
R = 8.314          //in J / K mol

//Declaration of Variables
m = 1
V1 = 5             // dm cube
V2 = 10            // dm cube
T = 300            // K

// Solution
mprintf("For isothermal and reversible process,\n")

d_E = 0
d_H = 0
d_A = - 2.303 * m * R * T * log10(V2 / V1)
d_G = - 2.303 * m * R * T * log10(V2 / V1)
q = - d_G
W = - d_G

mprintf(" d_E = d_H = %d \n", d_H)
mprintf(" d_G = d_A =%.3f J / mol\n",d_G)
mprintf(" For isothermal and reversible expansion\n")
mprintf(" q = W = -d_G = %.3f J / mol",W)
