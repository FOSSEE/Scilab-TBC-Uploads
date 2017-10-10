//Chapter 13: Fuel and Combustions
//Problem: 2
clc;

//Declaration of Variables
C = 90              // %
O = 3.0             // %
S = 0.5             // %
N = 0.5             // %
ash = 2.5           // %
LCV = 8490.5        // kcal / kg

// Solution
mprintf("HCV = LCV + 9 * H / 100 * 587\n")
mprintf(" HCV = 1/100 * (8080 * C + 34500 * (H - O / 8) + 2240 * N)\n")
H = (8490.5 - 7754.8) / (345 - 52.8)
H = 4.575
mprintf(" The percentage of H is %.3f percent\n", H)
HCV = LCV + 52.8 * H
mprintf(" Higher calorific value of coal %.1f kcal / kg",HCV)
