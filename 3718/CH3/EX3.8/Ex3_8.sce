//Chapter 3: Thermodynamic and Chemical Equilibrium
//Problem: 8
clc;

//Declaration of Constant
R = 1.987               // cal per K per mol

//Declaration of Variables
m = 5
Vo = 4                  //in litres, Initial Volume
Vf = 40                 //in litres, Final Volume
T = 27                  //in deg C

// Solution
mprintf("dS = nRln(V2 / V1)\n")

dS = m * R * 2.303 * log10(Vf / Vo)

mprintf(" The change in entropy is: %.2f cal / degree",dS)
