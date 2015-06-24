clc
// Given that
I = 1e5 // Power intensity of laser beam in W/mm^2
d = 200 // Focused diameter of incident beam in micro meter
T_m = 3400 // Melting temperture of tungsten in °C
rho_c = 2.71 // Value of volume specific heat for tugsten in J/cm^3
k = 2.15 // Thermal conductivity of tungsten in W/cm-°C
p_a = 10 // Percentage of beam absorbed
// Sample Problem 15 on page no. 400
printf("\n # PROBLEM 6.15 # \n")
H = (p_a/100)*(I)*(100)
alpha = k/rho_c
zeta = 0.5 // Fr0m the standard table
 // By solving the equation T_m = ((2*H)*(sqrt(alpha*tm))/k)*((1/sqrt(%pi))-ierfc(d/(4*sqrt(alpha*tm))))
tm = 1/((200^2)*(zeta^2)*(alpha))
printf("\n Time required for the centre of the circular spot to reach the melting point = %f sec",tm)
// Answer in the book is given as 0.00013 sec
