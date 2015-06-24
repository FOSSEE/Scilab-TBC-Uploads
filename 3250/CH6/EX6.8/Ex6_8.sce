clc
x = poly(0,"x") 
// Given that
y = 10+0.3*x-0.05*x^2//Equation of geometry of workpiece surface
V = 15 // Applied potential in Volt
f  = 0.75 // Feed velocity in cm/min
k = 0.2 // Conductivity of electrolyte in ohm^-1-cm^-1
Vo = 0.67 // Total overvoltage in Volt
F = 96500 // Faraday constant in coulombs per mole
// Sample Problem 8 on page no. 361
printf("\n # PROBLEM 6.8 # \n")
A = 63.57 // Atomic gram weight of copper in gm
Z = 1 // Valency of dissolation of copper
D = 8.96 // Density of copper in gm/cm^3
lambda = k*A*(V-Vo)/(D*Z*F)
r = lambda/(f/(10*60))
Y = 10 + 0.3*(x-(r*((0.3-0.1*x)/(1-0.1*r)))) - 0.05*(x-(r*((0.3-.1*x)/(1-0.1*r))))^2 - r
printf("\n The equation of required tool geometry is :-\n  y  =")
disp(Y)
