clc
// Intialization of variables
H1 = 3348 // kJ/Kg
H2 = 2550 // kJ/Kg
V1 = 30 // m/s
V2 = 60 //m/s
// calculations
Wsh = H1 - H2 + (V1^2 - V2^2)/(2*1000)
// results
printf("Work output involved per unit mass is %.f kJ/Kg",Wsh)
