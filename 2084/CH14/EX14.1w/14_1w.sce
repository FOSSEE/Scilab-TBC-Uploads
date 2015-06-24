//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.1w
//calculation of the extension of the wire

//given data
L=2//lengh(in m)of the wire
A=.2*10^-4//area(in m^2)
m=4.8//mass(in kg)
Y=2*10^11//Young modulus of steel
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
T=m*g//weight
l=(T*L)/(A*Y)//exension

printf('the extension of the wire is %3.1e m',l)
