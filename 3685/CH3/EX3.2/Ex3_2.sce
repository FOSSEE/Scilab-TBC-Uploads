clc
dV = 0.6 // Volumetric change in m^3
P = 101.325e03 // Atmospheric pressure in N/m^2
Wd = P*dV // Work done in J
printf("\n Example 3.2")
printf("\n The displacement work done by the air is %f kJ",Wd/1e3)
//The answers vary due to round off error
