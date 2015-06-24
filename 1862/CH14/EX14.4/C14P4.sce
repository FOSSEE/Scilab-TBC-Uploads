clear
 clc
//to find speed of partical at r = 0

// GIVEN:

//mass of Earth
ME = 5.98e24//in Kg
//radius of Earth
RE = 6.37e6//in m
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//applying newton's law of universal gravitation and law of conservation of energy
//speed of partical at r = 0
v = sqrt((G*ME)/(RE))//in m/s
printf ("\n\n Speed of partical at r = 0 is v = \n\n %.2e m/s",v)
