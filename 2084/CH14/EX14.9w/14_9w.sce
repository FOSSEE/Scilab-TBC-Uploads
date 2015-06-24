//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.9w
//calculation of the elongation of the wire 

//given data
W=10//weight(in N) of the block
A=3*10^-6//area(in m^2) of the cross section
r=20*10^-2//radius(in m) of the circle of rotation
v=2//speed(in m/s) of the block
Y=2*10^11///Young modulus(in N/m^2) of the wire
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
m=W/g//mass of the block
T=W+(m*v*v/r)//tension
L=r
l=(T*L)/(A*Y)//elongation

printf('the elongation of the wire is %3.1e cm',l*10^2)
