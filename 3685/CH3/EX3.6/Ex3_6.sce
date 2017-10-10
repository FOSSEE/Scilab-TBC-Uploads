clc
// Given that
SH = 0.9 // Specific heat of aluminium in solid state in kJ/kgK 
L = 390 // Latent heat in kJ/kg
aw = 27 // Atomic weight
D = 2400 // Density in molten state in kg/m^3
Tf = 700 // Final temperature in degree Celsius
Tm = 660 // Melting point of aluminium in degree Celsius
Ti = 15 // Initial temperature in degree Celsius
HR = SH*(Tm-Ti)+L+(29.93/27)*(Tf-Tm) // Heat requirement
HS = HR/0.7  // Heat supplied
RM = 2.17e3*3600/HS  // From the data of problem 3.7
V = 2.18 // Volume in m^3
M = V*D
printf("\n Example 3.6")
printf("\n Rate at which aluminium can be melted is %f tonnes/h",RM/1e3)
printf("\n Mass of aluminium that can be held in furnace is %f tonnes",M/1e3)


