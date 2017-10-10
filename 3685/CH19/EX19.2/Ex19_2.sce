
clc
c = 0.05 // Clearance volume
p1 = 96 // Inlet pressure in bar
p2 = 725 // Outlet pressure in bar
pa = 101.3 // Atmospheric pressure
Ta = 292 // Atmospheric temperature in kelvin
T1 = 305 // Inlet temperature in Kelvin
n = 1.3 // polytropic index
printf("\n Example 19.2 \n ")
n_v = (1+c-c*((p2/p1)^(1/n)))*(p1/pa)*(Ta/T1)
printf("\n Volumetric efficiency of system is %f percent", n_v*100)
// Answer is not mentioned in book
