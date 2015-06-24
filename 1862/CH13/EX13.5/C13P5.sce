
clear
 clc
//to find change in stored internal energy of system of block+surface
//distance travelled by block befire coming to rest

// GIVEN:
//mass of block
M = 5.2//in Kg
//initial horizontal velocity of block
vcm = 0.65//in m/s
//coefficient of kinetic friction
mew = 0.12
//acceleration due to gravity
g = 9.8//in m/s^2

// SOLUTION:
//applyinq consevation of energy principle
//change in stored internal energy of system of block+surface
//final kinetic energy is zero as block comes to rest
delta_Eint = -(0-(1/2*M*vcm^2))//in J //-ve sign as kinetic energy is lost
//distance travelled by block befire coming to rest
scm = (vcm^2/(2*mew*g))//in m

printf ("\n\n Final kinetic energy is zero as block comes to rest delta_Eint = \n\n %.1f J",delta_Eint)
printf ("\n\n Distance travelled by block befire coming to rest scm = \n\n %.2f m",scm)
