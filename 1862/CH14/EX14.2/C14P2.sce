clear
 clc
//to find magnitude and direction of gravitational force

// GIVEN:
//refer to figure 14-4 on page no. 302
//mass of astronaut
ma = 105//in Kg
//mass of first asteroid
m1 = 346//in Kg
//radius of first asteroid
r1 = 215//in m
//mass of second asteroid
m2 = 184//in Kg
//radius of second asteroid
r2 = 142//in m
//angle between forces
theta = 120//in degrees
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2

// SOLUTION:
//applying newton's law of universal gravitation
//magnitude of gravitational force due to first asteroid 
Fa1 = G*((ma*m1)/(r1^2))//in N
//magnitude of gravitational force due to second asteroid 
Fa2 = G*((ma*m2)/(r2^2))//in N
//magnitude of total gravitational force
//using parallelogram method
Fa = sqrt((Fa1^2)+(Fa2^2)+(2*Fa1*Fa2*cosd(theta)))
//direction of gravitational force
fi = atand((Fa2*sind(theta))/(Fa1+(Fa2*cosd(theta))))//in degrees
Fa = nearfloat("pred",5.80e-11)

printf ("\n\n Magnitude of gravitational force due to first asteroid Fa1 = \n\n %.2e N",Fa1)
printf ("\n\n Magnitude of gravitational force due to second asteroid Fa2 = \n\n %.2e N",Fa2)
printf ("\n\n Magnitude of total gravitational force Fa = \n\n %.2e N",Fa)
printf ("\n\n Direction of gravitational force fi = \n\n %.1f degree",fi)
