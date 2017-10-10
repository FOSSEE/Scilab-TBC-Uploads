//Chapter 13: Fuel and Combustions
//Problem: 4
clc;

//Declaration of Variables
x = 0.84           // g
W = 1060           // g
w = 135            // g
d_t = 2.5      // C

// Solution
HCV = ((W + w) * d_t) / x
mprintf("HCV of fuel is : %.2f kcal / kg",HCV)
