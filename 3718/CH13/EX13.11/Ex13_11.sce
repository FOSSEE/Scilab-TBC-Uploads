//Chapter 13: Fuel and Combustions
//Problem: 11
clc;

//Declaration of Variables
H = 15.4           //in %
C = 84.6           //in %
wt_fuel = 1        //in kg
wt_C = 0.846       //in kg
wt_H = 0.154       //in kg

// Solution
mprintf("The combustion reactions are,\n")
mprintf(" C + O2 --> CO2\n")
mprintf(" 12  32  \t(by Weight)\n")
mprintf(" 2H2 + O2 --> H20\n")
mprintf(" 4    32\t(by Weight)\n")

wt_O = 32 / 12.0 * wt_C
wt_O_H = 32 / 4.0 * wt_H
totwt = wt_O + wt_O_H
totwc=22.4 / 32 * totwt * 1000

mprintf(" Because 32 gm of O2 occupies a volume of 22.4 liters at NTP\n")
mprintf(" 3.488 * 1000 gm of O2 will occupy %.1f l",totwc)
