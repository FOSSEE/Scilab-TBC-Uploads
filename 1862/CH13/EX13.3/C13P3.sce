
clear
 clc
//to find speed of center of mass
//to find change in stored internal energy


// GIVEN:
//refer to figure 13-5 on page no. 285
//mass of ice skater
M = 50//in Kg
//force exerted
F = 55//in N
//distance moved by center of mass
scm = 32e-2//in m
// SOLUTION:
//consider newton's third law and center of mass equation
//speed of center of mass
vcm = sqrt(2*F*scm/M)//in m/s
//applying conservation of energy principle
//change in stored internal energy
delta_Eint = -(1/2)*(M*vcm^2)//in J

printf ("\n\n Speed of center of mass vcm  = \n\n %.2f m/s",vcm)
printf ("\n\n Change in stored internal energy delta_Eint = \n\n %.1f J",delta_Eint)
