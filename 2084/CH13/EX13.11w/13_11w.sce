//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.11w
//calculation of the velocity of the water coming out of the opening 

//given data
AA=.5//area(in m^2) of the tank
AB=1*10^-4//area(in m^2) of the cross section at the bottom
m=20//mass(in kg) of the load
h=50*10^-2//height(in m)of the water level
g=10//gravitational acceleration(in m/s^2) of the earth 
rho=1000//density of the water(in kg/m^3)

//calculation
//from the equation............P = P0 + (h*rho*g)//pressure at the bottom
r=m*g/AA//in above equation it is the value of (h*rho*g)
//on solving,we get............PA = P0 + (400 N/m^2)
//from Bernoulli equtation.....P1 + (rho*g*h1) + (rho*v1^2/2) = P2 + (rho*g*h2) + (rho*v2^2/2)
//we get
vB=sqrt((2*(r+(rho*g*h)))/rho)

printf('the velocity of the water coming out of the opening is %3.1f m/s',vB)
