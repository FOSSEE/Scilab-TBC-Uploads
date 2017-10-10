//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 14
clc;

//Declaration of Variables
V1 = 6            //in dm cube
V2 = 2            //in dm cube
T1 = 27           //in C
m = 5

// Solution
mprintf("T1*V1 ^ (gamma - 1) = T2 * V2 ^ (gamma - 1)\n")

T1 =T1 + 273       // K
T2 = T1 * (V1 / V2) ** (8.314 / 20.91)

mprintf(" The Final Temperature is %.1f K\n",T2)

q = 0             //For Adiabatic process
d_E = - m * 20.91 * (T2 - T1)
d_E = d_E / 1000

mprintf(" q =%d \n", q)
mprintf(" Change is Energy is %.2f kJ / mol\n",d_E)

W = - d_E

mprintf(" W = %.2f kJ /mol",d_E)
