clear
 clc
//to find magnitude of gravitational force exerted on cantaloupe on the surface of earth
//due to (a)the Earth (b)the Moon (c)the Sun

// GIVEN:
//mass of cantaloupe
mc = 1.00//in Kg
//acceleration due to gravity
g = 9.8//in m/s^2
//Gravitational constant
G = 6.67e-11//in N.m^2/Kg^2
//mass of moon
m_M = 7.36e22//in Kg
//mass of sun
m_S = 1.99e30//in Kg
//radius of moon
r_M = 3.82e8//in m
//radius of sun
r_S = 1.50e11//in m

// SOLUTION:
//applying newton's law of universal gravitation
//gravitational force exerted on cantaloupe on the surface of earth
//due to (a)the Earth
FcE = mc*g//in N
//gravitational force exerted on cantaloupe on the surface of earth
//due to (a)the Moon
FcM = G*((mc*m_M)/(r_M)^2)//in N
//gravitational force exerted on cantaloupe on the surface of earth
//due to (a)the Sun
FcS = G*((mc*m_S)/(r_S)^2)//in N

printf ("\n\n Gravitational force exerted on cantaloupe on the surface of earth\n due to (a)the Earth FcE = \n\n %.1f N",FcE)
printf ("\n\n Gravitational force exerted on cantaloupe on the surface of earth\n due to (b)the Moon FcM = \n\n %.2e N",FcM)
printf ("\n\n Gravitational force exerted on cantaloupe on the surface of earth\n due to (c)the Sun FcS = \n\n %.2e N",FcS)
