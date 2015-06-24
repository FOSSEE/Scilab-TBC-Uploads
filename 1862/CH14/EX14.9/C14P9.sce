clear
clc
//to find aphelion or farthest distance of Halley's comet from the Sun and eccentricity of it's orbit

// GIVEN:
//refer to figure 14-16 from page no. 313
//period of the Halley's comet
T = 76 //in years
//mass of Sun
M = 2.0e30//in Kg
//closest approach to the Sun
//minimum distance of Halley's comet from Sun
Rp = 8.8e10//in meters
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//applying Kepler's law of peroids
//semimajor axis
a = ((G*(T*365*24*60*60)^2*M)/(4*%pi^2))^(1/3)//in meters //taking T in seconds
//refer to figure 14-14
//maximum distance of Halley's comet from Sun
Ra = (2*a)-Rp//in meters
//eccentricity of Halley's orbit
e = 1-(Rp/a)

printf ("\n\n Semimajor axis a = \n\n %.1e m",a)
printf ("\n\n Maximum distance of Halley comet from Sun Ra = \n\n %.1e m",Ra)
printf ("\n\n Eccentricity of Halley orbit e = \n\n %.2f ",e)
