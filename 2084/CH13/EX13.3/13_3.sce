//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.3
//calculation of the speed of the outgoing liquid

//given data
A1=1*10^-4//area(in m^2) of the inlet of the tube
A2=20*10^-6//area(in m^2) of the outlet of the tube
v1=2//speed(in cm/s) of the ingoing liquid

//calculation
v2=A1*v1/A2//equation of continuity

printf('the speed of the outgoing liquid is %d cm/s',v2)
