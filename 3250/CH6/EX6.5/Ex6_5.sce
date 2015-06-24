clc 
// Given that
V = 10 // DC supply voltage in Volt
k = 0.2 // Conductivity of electrolyte in ohm^-1-cm^-1
f = 0.1 // Feed rate in m/min
Vo = 1.5 // Total overvoltage in Volt
F = 96500 // Faraday constant in coulombs per mole
// Sample Problem 5 on page no. 352
printf("\n # PROBLEM 6.5 # \n")
A = 55.85 // Atomic gram weight of iron in gm
Z = 2 // Valency of dissolation of iron
rho = 7.86 // Density of iron in gm/cm^3
Yc = k*A*(V-Vo)/(rho*Z*F*(f/60))
printf("\n Equilibrium gap = %f cm",Yc)

// Answer in the book is given as 0.04 cm
