clc
// Given that
f = 0.9 // Fraction of electrons leaving the cathode ray and reaching the anode without making any collision
x = 20 // Distance between cathode ray tube and anode in cm
sigma = 4.07e-19 // Collision cross section of molecules in m^2
T = 2000 // Temperature in K
printf("\n Example 22.9 \n")
lambda = (x*0.01)/(log(1/f))
n = 1/(sigma*lambda)
p = n*(1.38e-23)*T
printf("\n Pressure = %e N/m^2",p)
// The answer given in the book contains round off error.
