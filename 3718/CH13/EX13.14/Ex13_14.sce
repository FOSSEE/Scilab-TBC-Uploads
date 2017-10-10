//Chapter 13: Fuel and Combustions
//Problem: 14
clc;

//Declaration of Variables
C = 80       // %
H = 7        // %
N = 2.1      // %
O = 3        // %
S = 3.5      // %
Ash = 4.4    // %

// Solution
HCV = 1 / 100. * (8080 * C + 34500 * (H - O / 8.) + 2240 * S)
LCV = HCV - 0.09 * H * 587

mprintf("HCV is %d kcal/kg\n",HCV)
mprintf(" LCV is %d kcal/kg",LCV)
