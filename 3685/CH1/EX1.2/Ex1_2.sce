clc
d_r = 13.6e03 // Density of mercury in kg/m^3
g = 9.81 // Acceleration due to gravity in m/s^2
z = 710e-03 // Steam flow pressure in m
z0 = 772e-03 // Reading of barometer in m
P = 1.4e06 // Gauge pressure of applied steam in Pa
P0 = d_r*g*z0 // Atmospheric pressure in Pa
Pi = P+P0  // Inlet steam pressure in Pa
Pc = d_r*g*(z0-z) // Condenser pressure in Pa

printf("\n Example 1.2\n")
printf("\n Inlet steam pressure is %f MPa",Pi/1e6)
printf("\n Condenser pressure is %f kPa",Pc/1e3)
//The answers vary due to round off error



