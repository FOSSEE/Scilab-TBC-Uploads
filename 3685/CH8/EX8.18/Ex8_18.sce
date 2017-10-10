clc
h1 = 3230.9 // Enthalpy of steam at turbine inlet in kJ/kg
s1 = 6.69212// Entropy of steam at turbine inlet in kJ/kgK 
V1 = 160 // Velocity of steam at turbine inlet in m/s
T1 = 400 // Temperature of steam at turbine inlet in degree Celsius
h2 = 2676.1 // Enthalpy of steam at turbine exit in kJ/kg
s2 = 7.3549 // Entropy of steam at turbine exit in kJ/kgK 
V2 = 100 // Velocity of steam at turbine exit in m/s
T2 = 100 // Temperature of steam at turbine exit in degree Celsius
T0 = 298 // Ambient temperature in K
W = 540 // Work developed by turbine in kW
Tb = 500 // Average outer surface temperature of turbine in K

printf("\n Example 8.18")
Q = (h1-h2)+((V1^2-V2^2)/2)*1e-03-W // Heat loss
I = 151.84-Q*(0.404) // Irreversibility 
AF = W + Q*(1-(T0/Tb)) + I // Exergy transfer
n2 = W/AF // second law efficiency

printf("\n Irreversibility per unit mass is %f kJ/kg",I)
printf("\n The second law efficiency of the turbine is %d percent",n2*100)


