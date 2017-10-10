//Chapter 13: Fuel and Combustions
//Problem: 13
clc;

//Declaration of Variables
C = 81       // %
H = 8        // %
N = 2        // %
O = 5        // %

// Solution
mprintf("In 1kg coal,\n")

wt_C = C * 10
wt_H = H * 10
wt_N = N * 10
wt_O = O * 10
wt_ash = 100 - (wt_O + wt_N + wt_H + wt_C)

wt_a = ((wt_C * 32 / 12. + wt_H * 16 / 2. - wt_O) * 100 / 23.) / 1000.

mprintf(" Weight of air required for complete combustion of 10kg coal = %.2f kg\n",wt_a * 10)

HCV = 1 / 100. * (8080 * C + 34500 * (H - O / 8.))
LCV = HCV - 0.09 * H * 587

mprintf(" HCV is %d kcal/kg\n",HCV)
mprintf(" LCV is %d kcal/kg\n",LCV)
