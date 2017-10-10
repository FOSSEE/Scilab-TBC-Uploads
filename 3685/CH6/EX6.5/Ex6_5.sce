clc
T1 = 473 // Boiler temperature in K
T2 = 293 // Home temperature in K
T3 = 273 // Outside temperature in K
printf("\n Example 6.5")
MF = (T2*(T1-T3))/(T1*(T2-T3)) 
printf("\n  The multiplication factor is %f ",MF)
//The answers vary due to round off error
