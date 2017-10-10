//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 11
clc;

//Declaration of Variables
a = 1          //in mole
x = 3 / 4.0    // reaction completed

// Solution
K = (2.303 / 6) * log10(1 / (1 - x))
mprintf("The rate constant is :%.3f / min",K)
