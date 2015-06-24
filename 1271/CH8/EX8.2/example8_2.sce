clc 
// Given that
T = 373 // temperature in kelvin
d = 1.293e-3 // density of air at S.T.P. in gm/cm^3
d_ = 13.6 // density of mercury in gm/cm^3
s = 0.2417 // specific heat of air at constant pressure 
s_ = 0.1715 // specific heat of air at constant volume
g = 980 // gravitational constant i dynes/cm^3
// Sample Problem 2 on page no. 8.18
printf("\n # PROBLEM 2 # \n")
printf(" Standard formula used \n")
printf(" nu = (gamma*p/rho)^1/2  \n gamma = C_p/C_v \n p =rho*g*h \n" )
p = 76 * d_ * g
gama = s / s_
v = sqrt(gama * (p / d))
v_ = v * sqrt(T / 273)
printf("\n Velocity of sound in the air in %f cm/sec.",v_)
