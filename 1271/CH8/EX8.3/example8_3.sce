clc 
// Given that
n = 512 // frequency of tuning fork in Hz 
T = 290 // temperature in kelvin
lambda = 66.5 // wavelength of the gas emitted by tuning fork in cm
d = 1.293e-3 // density of air at S.T.P. in gm/cm^3
d_ = 13.6 // density of mercury in gm/cm^3
g = 980 // gravitational constant i dynes/cm^3
// Sample Problem 3 on page no. 8.18
printf("\n # PROBLEM 3 # \n")
printf(" Standard formula used \n")
printf(" nu = (gamma*p/rho)^1/2  \n p =rho*g*h \n\n" )
p = 76 * d_ * g// calculation for pressure
v_ = n * lambda// calculation for velocity of sound in air at temperature 17 c 
v = v_ * sqrt(273 / T)// calculation for velocity of sound in air at temp 0 c
gama = v^2 * (d / p)// calculation for ratio of two specific heat

printf("\n Ratio of  two principal specific heats of air is %f",gama)
