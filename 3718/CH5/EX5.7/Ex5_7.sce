//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 7
clc;

//Declaration of Variables
t05 = 30                //in minutes
a = 0.1                 //in M

// Solution
mprintf("For second order reaction,\n t0.5 = 1 / Ka\n")
K = 1 / (a * t05)
mprintf(" The rate constant is %.3f mol per lit per min",K)
