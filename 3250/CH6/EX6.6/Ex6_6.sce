clc 
// Given that
S_I1 = 5 // Surface irregulation in micro meter
S_I2 = 8 // Surface irregulation in micro meter
V = 12 // DC supply voltage in Volt
k = 0.2 // Conductivity of electrolyte in ohm^-1-cm^-1
Vo = 1.5 // Total overvoltage in Volt
F = 96500 // Faraday constant in coulombs per mole
// Sample Problem 6 on page no. 353
printf("\n # PROBLEM 6.6 # \n")
Y_min = (S_I1+S_I2)*(10^(-4))
A = 55.85 // Atomic gram weight of iron in gm
Z = 2 // Valency of dissolation of iron
D = 7.86 // Density of iron in gm/cm^3
f_max = (k*A*(V-Vo)/(Z*D*F*Y_min))*60
printf("\n Largest passible feed rate = %f mm/min",f_max*10)

