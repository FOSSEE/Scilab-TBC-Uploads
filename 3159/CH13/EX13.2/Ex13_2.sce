// Calculation of required quantity of magnesium
clc
j = 15 // current density in mA m^-2
m = 0.0243 // molar mass of magnesium
F = 96490 // farad charge
n = 2 // charge on ion
t = 10 // time in years
printf("\n Example 13.2")
a = m*j*1e-3*(t*365*24*3600)/(n*F)
printf("\n Amount of magnesium required is %0.1f kg m^-2",a)
