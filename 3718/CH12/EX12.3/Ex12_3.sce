//Chapter 12: Polymers and Polymerization
//Problem: 3
clc;

//Declaration of Variables
d1 = 920                    // density,in kg per m cube
d2 = 961.97                 // density,in kg per m cube
dp = 44                     // density %

// Solution
mprintf("dp = [d2 * (p - d1)] * [100/p * (d2 - d1)]\n")
p = 937.98
mprintf(" Density of sample is %.2f kg per m cube", p)
