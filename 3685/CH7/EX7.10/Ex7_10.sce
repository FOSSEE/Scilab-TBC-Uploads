clc
A = 5*7 // Area of wall in m^2
k = 0.71// Thermal conductivity in W/mK 
L = 0.32 // Thickness of wall in m
Ti = 21 // Room temperature in degree Celsius 
To = 6 // Surrounding temperature in degree Celsius
printf("\n Example 7.10")
Q = k*A*(Ti-To)/L  // Heat transfer
Sgen_wall = Q/(To+273) - Q/(Ti+273)  // Entropy generation in wall
printf("\n The rate of heat transfer through the wall is %f W",Q)
printf("\n The rate of entropy through the wall is %f W/K",Sgen_wall)
Tr = 27 // Inner surface temperature of wall in degree Celsius 
Ts = 2 // Outer surface temperature of wall in degree Celsius 
Sgen_total = Q/(Ts+273)-Q/(Tr+273) // Total entropy generation in process 
printf("\n The rate of total entropy generation with this heat transfer process is %f W/K",Sgen_total)


