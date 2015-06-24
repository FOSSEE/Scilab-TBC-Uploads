clc
clear

//Input data
M=0.25 //mach number
D=0.04 //Diamter in m
f=0.002 //frictional factor

//Calculation
X=8.483 //fanno parameter from gas tables at M
Lmax=(X*D)/(4*f) //Lenggth of the pipe in m

//Output
printf('Length of the pipe is %3.3f m',Lmax)
