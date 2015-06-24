clc
// Given that
I = 1e5 // Power intensity of laser beam in W/mm^2
t = 0.5 // Thickness of tungsten sheet in mm
d = 200 // Drill diameter in micro meter
P = 3e4 // Energy required per unit volume to vapourize tungsten in J/cm^3
p_e = 10 // Percentage efficiency
T_m = 3400 // Melting temperture of tungsten in °C
k = 2.15 // Thermal conductivity of tungsten in W/cm-°C
// Sample Problem 17 on page no. 403
printf("\n # PROBLEM 6.17 # \n")
H = (p_e/100)*(I)*(100)
v = H/P
T = t*(0.1)/(v)
printf("\n The time required to drill a through hole = %f sec",T)
