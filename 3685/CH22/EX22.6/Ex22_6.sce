clc
// Given that
F = .90 // Fraction of electrons leaving the cathode ray reach the anode without making a collision
x = 0.2 // Distance between cathode ray and anode in m
d = 3.6e-10 // Diameter of ion in m
t = 2000 // Temperature of electron in K
printf("\n Example 22.6 \n")
lambda = x/(log(1/F))
sigma = %pi*(d^2)
n = 4/(sigma*lambda)
p = n*(1.38*10^-23)*(t)
printf("\n Pressure in the cathode ray tube = %f Pa",p)

