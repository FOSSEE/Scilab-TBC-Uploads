//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 10
clc;

//Declaration of Constant
R = 1.987               //in cal per K per mol

//Declaration of Variables
K2_K1 = 4    // factor increase
T1 = 27      //in C
T2 = 47      //in C

// Solution
T1 = T1 + 273.0
T2 = T2 + 273.0
Ea = log10(4) * 2.303 * R * (T1 * T2 / (T2 - T1))
mprintf("The activation energy for the reaction is %.2e cal /mol",Ea)
