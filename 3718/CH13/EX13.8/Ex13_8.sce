//Chapter 13: Fuel and Combustions
//Problem: 8
clc;

//Declaration of Variables
C = 86      // %
H = 4       // %
N = 1.3     // %
S = 3       // %
O = 4       // %
Ash = 1.7   // %
wt = 500    // g

// Solution
wt_C = C / 100.0
wt_S = S / 100.0
wt_H = H / 100.0
wt_O = O / 100.0

mprintf("Nitrogen and ash are incombustible, so they do not require oxygen\n")

wt_O_C = 32 / 12.0 * wt_C
wt_O_S = 32 / 32.0 * wt_S
wt_O_H = 32 / 4.0 * wt_H

totw = wt_O_H + wt_O_S + wt_O_C
wt_O_n = totw - wt_O
wt_a = (100.0 / 23.0 * wt_O_n) * 500 / 1000.0

mprintf(" Minimum Wt. of air required by 500g of fuel %.2f kg",wt_a)
