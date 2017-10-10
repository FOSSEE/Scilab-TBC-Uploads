//Chapter 12: Polymers and Polymerization
//Problem: 1
clc;

//Declaration of Variable
Mwt = 21150             // in g per mol

// Solution
m = 2 * 12 + 3 * 1.008 + 1 * 35.45      // g per mer
n = Mwt / m
mprintf("The degree of polymerization is %d",n)
