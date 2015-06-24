//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.11w
//calculation of the amount by which the pressure inside the bubble is greater than the atmospheric pressure

//given data
r=1*10^-3//radius(in m) of the air bubble 
S=.075//suface tension(in N/m)
rho=1000//density(in kg/m^3) of the liquid
h=10*10^-2//depth(in m) of the bubble
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//P = P0 +(h*rho*g)........(1)
//Pdash = P + (2*S/r)......(2)
//deltaP = Pdash - P0
deltaP=(h*rho*g)+(2*S/r)//difference in the pressure

printf('the pressure inside the bubble is greater than the atmospheric pressure by %d Pa',deltaP)
