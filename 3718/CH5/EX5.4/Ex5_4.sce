//Chapter 5: Chemical Kinetics and Catalysis
//Problem: 4
clc;

//Declaration of Variables
t = 60                  //in min
x = "0.5a"
K = 5.2 * 10 ** - 3     //in per mol L per min

// Solution
a = 1 / (t * K)
mprintf("Initial concentration = %.3f mol / L",a)
