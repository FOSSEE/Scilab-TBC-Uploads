clc
d_r = 13640 // Density of mercury in kg/m^3
g = 9.79 // Acceleration due to gravity in m/s^2
z = 562e-03 // Difference in height in m
z0 = 761e-03 // Reading of barometer in m
P = (d_r*g*(z+z0))*(0.987/1e05) // Gas Pressure in atm

printf("\n Example 1.1\n")
printf("\n Gas Pressure is %f atm",P)
//The answers vary due to round off error
