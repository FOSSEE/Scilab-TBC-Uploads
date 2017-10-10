//Chapter 13: Fuel and Combustions
//Problem: 1
clc;

//Declaration of Variables
C = 84          // %
S = 1.5         // %
N = 0.6         // %
H = 5.5         // %
O = 8.4         // %

// Solution
GCV = (8080 * C + 34500 * (H - O / 8) + 2240 * S) / 100
LCV = (GCV - 9 * H / 100 * 587)
mprintf("Gross Calorific Value :%d kcal / kg\n",GCV)
mprintf(" Net Calorific Value : %.2f kcal / kg",LCV)
