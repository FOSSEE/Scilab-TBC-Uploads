clear
clc
//to find atmospheric pressure

// GIVEN:
//height of mercury column in barometer
h = 740.35//in mm
//temperature
T = -5.0//in degree
//density of mercure
rho = 1.3608e4//in Kg/m^3
//acceleration due to gravity
g = 9.7835//in m/s^2

// SOLUTION:
//atmospheric pressure
po = rho*g*h*10^-3//in Pa
//taking h in meters

printf ("\n\n Atmospheric pressure po  = \n\n %.4e Pa",po)
