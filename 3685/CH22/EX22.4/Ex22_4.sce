clc
// Given that
p = 1 // Pressure in atm
t = 300 // Temperature in K
printf("\n Example 22.4 \n")
// From previous example, we have
m = 5.31e-26 // In kg/molecule
v = 445 // In m/s
sigma = 3.84e-19 // In m^2
// Therefore
mu = (1/3)*(m*v/sigma)
printf("\n Coefficient of viscosity = %e Ns/m^2",mu)

