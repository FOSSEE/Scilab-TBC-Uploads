//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.8w
//calculation of the elastic potential energy stored in the wire

//given data
A=3*10^-6//area(in m^2) of the cross section
l=50*10^-2//natural length(in m)
m=2.1//mass(in kg) hanged
Y=1.9*10^11///Young modulus(in N/m^2) of the wire
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
V=A*l//volume of the wire
T=m*g//tension in the wire
Ss=T/A//stress
St=Ss/Y//strain
U=(Ss*St*V/2)//elastic potential energy

printf('the elastic potential energy stored in the wire is %3.1e J',U)
