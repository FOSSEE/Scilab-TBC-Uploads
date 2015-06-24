clear
clc
//to find height above the Earth

// GIVEN:

//period of the satellite
T = 86400//in seconds
//mass of Earth
ME = 5.98e24//in Kg
//radius of Earth
RE = 6.37e6//in meters
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//applying Kepler's law of peroids
//radius of orbit of satellite
r = ((G*T^2*ME)/(4*%pi^2))^(1/3)//in meters
//height above the Earth
h = r-RE//in meters
r = nearfloat("pred",4.22e7)
h = nearfloat("pred",3.58e7)

printf ("\n\n Radius of orbit of satellite r = \n\n %.2e m",r)
printf ("\n\n Height above the Earth h = \n\n %.2e m",h)
