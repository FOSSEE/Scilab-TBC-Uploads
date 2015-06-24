//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.4
//calculation of the difference in the pressures at A and B point

//given data
A1=1*10^-4//area(in m^2) at point A of the tube
A2=20*10^-6//area(in m^2) at point B of the tube
v1=10*10^-2//speed(in m/s) of the ingoing liquid
rho=1200//density of the liquid(in kg/m^3)

//calculation
v2=A1*v1/A2//equation of continuity
//by Bernoulli equtation.....P1 + (rho*g*h1) + (rho*v1^2/2) = P2 + (rho*g*h2) + (rho*v2^2/2)
deltaP=(1/2)*rho*(v2^2-v1^2)

printf('the difference in the pressures at A and B point is %d Pa',deltaP)
