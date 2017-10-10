clc
ho = 12 // Outside convective heat transfer coefficient in W/m^2K 
x1 = 0.23// Thickness of brick in m
k1 = 0.98 // Thermal conductivity of brick in W/mK
x2 = 0.08 // Thickness of foam in m
k2 = 0.02// Thermal conductivity of foam in W/mK
x3 = 1.5// Thickness of wood in cm
k3 = 0.17// Thermal conductivity of wood in W/cmK
hi = 29// Inside convective heat transfer coefficient in W/m^2K 
A = 90 // Total wall area in m^2
to = 22// outside air temperature in degree Celsius
ti = -2 // Inside air temperature in degree Celsius
printf("\n Example 18.1\n")
U = (1/((1/ho)+(x1/k1)+(x2/k2)+(x3*1e-2/k3)+(1/hi)))// Overall heat transfer coefficient
Q = U*A*(to-ti) // Rate of heat transfer
R = (1/ho)+(x1/k1)
t2 = to-Q*R/A // Temperature at inside surface of brick

printf("\n The rate of heat removal is %f W",Q)

printf("\n Temperature at inside surface of brick is %f degree celcius",t2)

//The answers vary due to round off error

