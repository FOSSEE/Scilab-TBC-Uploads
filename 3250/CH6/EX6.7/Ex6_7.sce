clc 
// Given that
f  = 0.2 // Feed rate in cm/min
l = 2.54 // Length of tool face in cm
w = 2.54 // Width of tool face in cm
T_b = 95 // Boiling temperature of electrolyte in °C
Nita = 0.876e-3 // Viscosity of electrolyte in kg/m-sec
D_e = 1.088 // Density of electrolyte in g/cm^3
c = .997 // Specific heat of electrolyte
V = 10 // DC supply voltage in Volt
k = 0.2 // Conductivity of electrolyte in ohm^-1-cm^-1
T = 35 // Ambient temperature in °C
Vo = 1.5 // Total overvoltage in Volt
F = 96500 // Faraday constant in coulombs per mole
// Sample Problem 7 on page no. 355
printf("\n # PROBLEM 6.7 # \n")
A = 55.85 // Atomic gram weight of iron in gm
Z = 2 // Valency of dissolation of iron
D = 7.86 // Density of iron in gm/cm^3
Ye = k*A*(V-Vo)*60/(D*Z*F*f)
J = k*(V-Vo)/(Ye)
D_T = T_b -T
v = (J^2)*(l)/(k*D_T*D_e*c)
Re = ((D_e*v*2*Ye)/Nita)*(0.1)
p = 0.3164*D_e*(v^2)*l/(4*Ye*(Re^0.25))*(10^-4)
A = l*w
F = p*A*(10^-1)*(1/2)
printf("\n Total force acting on the tool = %d N",F)
// Answer in the book is given as 79 N
