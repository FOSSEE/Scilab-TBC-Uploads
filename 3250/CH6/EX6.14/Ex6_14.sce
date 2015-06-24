clc
// Given that
I = 1e5 // Power intensity of laser beam in W/mm^2
T_m = 3400 // Melting temperture of tungsten in °C
rho_c = 2.71 // Value of volume specific heat for tugsten in J/cm^3
k = 2.15 // Thermal conductivity of tungsten in W/cm-°C
p_a = 10 // Percentage of beam absorbed
// Sample Problem 14 on page no. 399
printf("\n # PROBLEM 6.14 # \n")
alpha = k/rho_c
H = (p_a/100)*(I)*(100)
tm = (%pi/alpha)*((T_m*k)/(2*H))^(2)
printf("\n Time required for the surface to reach the melting point = %f sec",tm)
