//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.1
//calculation of the tensile stress developed in the wire

//given data
m=4//mass(in kg) of the load
r=2*10^-3//radius(in m) of the wire
g=3.1*%pi//gravitational acceleration(in m/s^2) of the earth

//calculation
F=m*g//gravitational force
A=%pi*r^2//area
St=F/A//tensile stress

printf('the tensile stress developed in the wire is %3.1e N/m^2',St)
