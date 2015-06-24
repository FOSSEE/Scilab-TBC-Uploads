//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 15.7
//calculation of the fundamental frequency of the portion of the string between the wall and the pulley 

//given data
m=1.6//mass(in kg) of the load
mw=20*10^-3//mass(in kg) of the wire
l=50*10^-2//length(in kg/m) of wire
g=10//gravitational acceleration(in m/s^2) of the earth
L=40*10^-2//length(in m) of the string between the wall and the pulley 

//calculation
F=m*g//tension in the string
mu=mw/l//linear mass density
nu0=(1/(2*L))*sqrt(F/mu)//fundamental frequency

printf('the fundamental frequency of the portion of the string between the wall and the pulley is %d Hz',nu0)


