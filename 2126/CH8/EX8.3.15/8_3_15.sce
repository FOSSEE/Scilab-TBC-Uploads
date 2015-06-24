clc
clear

//Input data
M=3 //mach number
D=0.04 //Diamter in m
f=0.002 //frictional factor

//Calculation
X=0.522 //fanno parameter from gas tables at M
L=(X*D)/(4*f) //Lenggth of the pipe in m

//Output
printf('Lenggth of the pipe is %3.2f m',L)
