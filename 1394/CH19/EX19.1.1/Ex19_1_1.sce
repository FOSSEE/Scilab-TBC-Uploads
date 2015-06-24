

clc
//initialization of variables
VP = 0.045*10^-3// Vapor pressure of permethrin in kg/m-sec^2
R = 8.31 // Gas constant in kg-m^2/sec^2-gmol-K
l = 63*10^-6 // membrane thickness in m
A = 12*10^-4 // area surrounded by the membrane in m^2
M1 = 19*10^-3 // Permithrin release in gmol
t = 24*3600 // time taken to release
T = 298 // Kelvin
MW = 391 // Mol wt
//Calculations
c1 = VP/(R*T) // C1sat 
P = (M1/(t*MW))*(l/c1)*(1/A)*10^-3 //Permeability in cm^2/sec
//Results
printf("The permeability is %.1e m^2/sec",P)
