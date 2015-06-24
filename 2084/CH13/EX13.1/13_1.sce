//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.1
//calculation of the force exerted by the water on the bottom

//given data
h=20*10^-2//height(in m) of the flask
r=10*10^-2//radius(in m) of the bottom of the flask
P0=1.01*10^5//atmospheric pressure(in Pa)
rho=1000//density of water(in kg/m^3)
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
P=P0+(h*rho*g)//pressure at the bottom
A=%pi*r^2//area of the bottom 
F=P*A//force on the bottom

printf('the force exerted by the water on the bottom is %d N',F)
