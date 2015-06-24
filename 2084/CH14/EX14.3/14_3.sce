//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.3
//calculation of the elastic potential energy stored in the stretched steel wire

//given data
l=2//length(in m) of the steel wire
A=4*10^-6//cross sectional area(in m^2) of the steel wire
dl=2*10^-3//increase in the length(in m)
Y=2*10^11//Young modulus(in N/m^2)

//calculation
St=dl/l//strain in the wire
Ss=Y*St//stress in the wire
V=A*l//volume of the steel wire
U=Ss*St*V/2

printf('the elastic potential energy stored in the stretched steel wire is %3.1f J',U)
