clc
// Given that
lambda = 2.63e-5 // Mean free path of the molecules of the gas in m
t = 25 // Temperature in degree centigrade
r = 2.56e-10 // Radius of the molecules in m
printf("\n Example 22.2 \n")
sigma = 4*%pi*r^2
n = 0.707/(sigma*lambda)
p = n*(t+273)*(1.38*10^-23)
N = 1/lambda
printf("\n Pressure of the gas = %f Pa,\n No of collisions made by a molecule per meter of path = %e",p,N)

