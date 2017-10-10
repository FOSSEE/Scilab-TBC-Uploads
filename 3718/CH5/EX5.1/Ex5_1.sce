//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 1
clc;

//Declaration of Variables
K = 3.5 * 10 ** - 2             // Rate constant

// Solution
mprintf("First order reaction = 0.693 / K\n")
t = 0.693 / K
mprintf(" Time taken for half the initial concentration to react:%.1f minutes", t)
