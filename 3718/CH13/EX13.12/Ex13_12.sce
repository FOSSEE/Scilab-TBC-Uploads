//Chapter 13: Fuel and Combustions
//Problem: 12
clc;

//Declaration of Variables
C = 750      // g
H = 52       // g
O = 121      // g
N = 32       // g
ash = 45     // g

// Solution
min_wt_a = (C * 32 / 12. + H * 16 / 2. - O) * 100 / 23.
HCV = 1 / 1000. * (8080 * C + 34500 * (H - O / 8.) + 2240 * 0)
LCV = HCV - 0.09 * H * 587 / 10.0

mprintf("HCV is %d kcal/kg\n",HCV)
mprintf(" LCV is %d kcal/kg",LCV)
