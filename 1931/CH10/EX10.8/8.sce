clc
clear
//INPUT DATA
l=1*10^-2//length of the intrinsic Ge rod in m
b=1*10^-3//breadth of the intrinsic Ge rod in m
t=1*10^-3//thickness of the intrinsic Ge rod in m
T=300//temperature of the intrinsic Ge rod in K
me=0.39//The electron mobility in m^2 V^-1 s^-1
mh=0.19//The hole mobility in m^2 V^-1 s^-1
ni=2.5*10^19//intrinsic carrier conduction in m^3
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
ec=(ni*e*(me+mh))//The electrical conductivity at room temperature in ohm^-1 m^-1
A=(b*t)//area in m^2
R=(l/(ec*A))//The resistance of an intrinsic Ge rod in ohm

//OUTPUT
printf('The resistance of an intrinsic Ge rod is %i ohm',R)
