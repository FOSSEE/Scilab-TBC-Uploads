//Chapter 7: Solid State
//Problem: 7
clc;

//Declaration of Variables
r = 174.6        // pm

// Solution
a = r * sqrt(8)
mprintf("For 200 plane: h = 2, k = 0, l = 0\n")
d200 = a / sqrt(2 ** 2)
mprintf(" d200 = %.1f pm\n",d200)
mprintf(" For 200 plane: h = 2, k = 2, l = 0\n")
d220 = a / sqrt(2 ** 2 + 2 ** 2)
mprintf(" d220 = %.1f pm", d220)
