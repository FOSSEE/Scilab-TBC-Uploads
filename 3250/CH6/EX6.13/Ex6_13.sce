clc
// Given that
w = 0.015 // Width of slot in cm
t = 1 // Thickness of tungsten sheet in mm
P = 5e3 // Power of electron beam in W
// Sample Problem 13 on page no. 395
printf("\n # PROBLEM 6.13 # \n")
rho_c = 2.71 // Value of volume specific heat for tugsten in J/cm^3
k = 2.15 // Thermal conductivity of tungsten in W/cm-°C
T_m = 3400 // Melting temperture in °C
Z = t/10 // In cm
v = (0.1^2)*(P^2)/((T_m^2)*(Z^2)*(k*w*rho_c))
printf("\n Speed of cutting = %f cm/sec",v)
