clc
// Given that
d = 200 // Diameter of focussed laser beam in micro meter
T_m = 3400 // Melting temperture of tungsten in °C
k = 2.15 // Thermal conductivity of tungsten in W/cm-°C
p_a = 10 // Percentage of beam absorbed
// Sample Problem 16 on page no. 401
printf("\n # PROBLEM 6.16 # \n")
H = 2*k*T_m/(d*10^-4)
I = H/(p_a/100)
printf("\n Minimum value of beam power intensity to achieve the melting = %e W/cm^2",I)
