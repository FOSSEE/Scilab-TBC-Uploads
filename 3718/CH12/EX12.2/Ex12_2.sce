//Chapter 12: Polymers and Polymerization
//Problem: 2
clc;

//Declaration of Variables
n = 10000               // degree of polymerisation

// Solution
m = 8 * 12 + 8 * 1.008  // g / mer
M = n * m
mprintf("Molecular weight of polystyrene chain = %.1f g /mol", M)
