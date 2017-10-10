//Chapter 13: Fuel and Combustions
//Problem: 9
clc;

//Declaration of Variables
wt_C = 3          // kg

// Solution
wt_a = wt_C * 32 * 100 / 12.0 / 23.0
vol_a = wt_a * 1000 * 22.4 / 28.94

mprintf("H2(g)  +  1/2 O2(g)  --> H20(l)\n")
mprintf(" 1            0.5         1\t\t(By Vol.)\n")
mprintf(" CO(g)  +  1/2 O2(g)  --> CO2(g)\n")
mprintf(" 1             0.5        1\t\t(By Vol.)\n")
mprintf(" CH4(g) +  2   O2(g)  --> CO2(g) + 2H2O(l)\n")
mprintf(" 1             2          1\t\t(By Vol.)\n")

mprintf(" Weight of air for the combustion of 3kg carbon %.3f kg\n",wt_a)
mprintf(" Vol. of air required for combustion of 3kg carbon %.3e L (or) %.2f metre cube",vol_a,vol_a / 1000)
