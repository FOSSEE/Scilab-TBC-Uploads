//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.2
//calculation of the value of Young modulus

//given data
m=4//mass(in kg) of the load
l=20//length(in m) of the steel wire
r=2*10^-3//radius(in m) of the steel wire
dl=.031*10^-3//increase in the length(in m)
g=3.1*%pi//gravitational acceleration(in m/s^2) of the earth

//calculation
Ssl=(m*g)/(%pi*r^2)//longitudinal stress
Stl=dl/l//longitudinal strain
Y=Ssl/Stl//Young  modulus

printf('the value of Young modulus is %3.1e N/m^2',Y)
