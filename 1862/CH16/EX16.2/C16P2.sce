clear
clc
//to find pressure in horizontal pipe and flow speed in pressure in smaller pipe

// GIVEN:
//refer to figure 16-7 on page no. 356
//height of storage tower
h = 32//in m
//diameter of storage tower
D = 3.0//in m
//diameter of horizontal pipe
d = 2.54//in m
//delivery rate of water
R = 0.0025//in m^3/s
//diameter of smaller pipe
d_dash = 1.27//in cm
//distance above the ground for water supply
yC = 7.2//in m
//initial pressure
p0 = 1.01e5//in Pa
//density of water
rho = 1.0e3//in Kg/m^3
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:
//area at leval A
A_A = %pi*(1.5)^2//in m^2
//area at leval B
A_B = %pi*(0.0127)^2//in m^2
//area at leval C
A_C = %pi*((d_dash*10^-2)/2)^2//in m^2
//applying equation of continuity
//speed of water at point A
vA = R/A_A//in m/s
//speed of water at point B
vB = R/A_B//in m/s
//applying Bernoulli's equation
//pressure in pipe at B
pB = p0+(rho*g*h)-((1/2)*rho*(vB^2))//in Pa
//applying equation of continuity
//speed of water at point C
vC = R/A_C//in m/s
//take h = yA
//applying Bernoulli's equation
//pressure in pipe at C
pC = p0-((1/2)*rho*(vC^2))+(rho*g*(h-yC))//in Pa
pB = nearfloat("succ",4.03e5)


printf ("\n\n Speed of water at point A vA = \n\n %.1e m/s",vA)
printf ("\n\n Speed of water at point B vB = \n\n %.1f m/s",vB)
printf ("\n\n Pressure in pipe at B pB = \n\n %.2e Pa",pB)
printf ("\n\n Speed of water at point C vC = \n\n %.1f m/s",vC)
printf ("\n\n Pressure in pipe at C pC = \n\n %.2e Pa",pC)
