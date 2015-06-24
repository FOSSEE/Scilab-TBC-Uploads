//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.10w
//calculation of the rate of water flow through the tube

//given data
A1=30//area(in cm^2) of the tube at point A
A2=15//area(in cm^2) of the tube at point B
deltaP=600//change in pressure(in N/m^2)
rho0=1000//density of the water(in kg/m^3)

//calculation
r=A1/A2//ratio of area
//from equation of continuity  vB/vA = A1/A2 = r = 2
//by Bernoulli equtation.....P1 + (rho*g*h1) + (rho*v1^2/2) = P2 + (rho*g*h2) + (rho*v2^2/2)
//take vB = vA*2
vA=sqrt(deltaP*(r/(r+1))*(1/rho0))
Rflow=vA*A1//rate of water flow 

printf('the rate of water flow through the tube is %d cm^3/s',Rflow*10^2)
