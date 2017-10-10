//Chapter 13: Fuel and Combustions
//Problem: 3
clc;

//Declaration of Variables
x = 0.72    // g
W = 250     // g
w = 150     // g
t1 = 27.3   // C
t2 = 29.1   // C

// Solution
HCV = ((W + w) * (t2 - t1)) / x
HCV = HCV * 4185.0 / 10 ** 6
mprintf("HCV of fuel is : %.3f KJ / Kg",HCV)
