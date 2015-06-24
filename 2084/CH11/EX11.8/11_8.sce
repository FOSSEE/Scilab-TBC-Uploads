//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.8
//calculation of the value of acceleration due to gavity

//given data
h=5*10^3//height(in m) above the earth's surface
R=6400*10^3//radius(in m) of the earth
g0=9.8//gravitational acceleration(in m/s^2) of the earth
d=5*10^3//depth(in m) below the earth's surface

//calculation
gh=g0*(1-(2*h/R))//formula of gravitational acceleration at height h above the earth's surface
gd=g0*(1-(d/R))//formula of gravitational acceleration at depth d below the earth's surface

printf('the value of gravitational acceleration at height 5 km above the earth surface is %3.2f m/s^2',gh)
printf('\nthe value of gravitational acceleration at depth 5 km below the earth surface is %3.2f m/s^2',gd)
