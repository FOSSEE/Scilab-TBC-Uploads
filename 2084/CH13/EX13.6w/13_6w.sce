//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.6w
//calculation of the elongation of the spring

//given data
m=10*10^-3//mass(in kg) of the copper piece
l=1*10^-2//elongation(in m) in the spring
g=10//gravitational acceleration(in m/s^2) of the earth
rho=9000//density of copper(in kg/m^3)
rho0=1000//density of water(in kg/m^3)

//calculation
k=m*g/l//spring constant
V=m/rho//volume of copper
Fb=V*rho0*g//force of buoyancy
x=((k*l)-Fb)/k//elongation of the spring

printf('the elongation of the spring is %3.2f cm',x*10^2)
