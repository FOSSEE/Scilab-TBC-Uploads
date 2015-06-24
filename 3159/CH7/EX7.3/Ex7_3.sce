// Calculate amount of pure water that can be extracted from sea water
clc
L = 23.3 // % composition of L
a = 3.5 // concentration of Nacl in sea water
ice = 0 // % composition of ice
printf("\n Example 7.3")
f_ice = (L-a)/(L-ice)
printf("\n Fractional amount of pure water that can be extracted from sea water is %0.2f",f_ice)
