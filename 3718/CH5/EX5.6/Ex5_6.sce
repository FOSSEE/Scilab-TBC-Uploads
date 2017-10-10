//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 6
clc;

//Declaration of Constants
R = 1.987               //in cal per K per mol

//Declaration of Variables
T1 = 273.0              //in K
T2 = 303.0              //in K
K1 = 2.45 * 10 ** -5
K2 = 162 * 10 ** -5

// Solution
Ea = log10(K2 / K1) * R * 2.303 / ((T2 - T1) / (T1 * T2))
mprintf("The activation energy of the reaction is %d cal / mol",Ea)
