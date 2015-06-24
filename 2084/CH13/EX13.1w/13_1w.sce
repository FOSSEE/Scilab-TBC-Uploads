//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.1w
//calculation of the force exerted by the mercury on the bottom of the beaker

//given data
h=10*10^-2//height(in m) of the mercury
r=4*10^-2//radius(in m) of the beaker
g=10//gravitational acceleration(in m/s^2) of the earth
P0=1*10^5//atmospheric pressure(in Pa)
rho=13600//density of mercury(in kg/m^3)

//calculation
P=P0+(h*rho*g)//pressure at the bottom
A=%pi*r^2//area of the bottom 
F=P*A//force on the bottom

printf('the force exerted by the mercury on the bottom of the beaker is %d N',F)
