clc
clear
//INPUT DATA
l=1*10^-2//length of intrinsic Ge rod in m
b=1*10^-3//breadth of intrinsic Ge rod in m
t=1*10^-3//thickness of intrinsic Ge rod in m
temp=300//temperature in k
d=2.5*10^19//intrinsic carrier density in Kg /m^3
z=0.39//mobility of electron in m^2V^-1S^-1
zh=0.19//mobility of hole in m^2V^-1S^-1 
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
x=(d*e)*(z+zh)//electrical conductivity in ohm^-1 m^-1
r=1/x//electrical resistivity in ohm metre
A=b*t//area in m^2
R=((r*l)/A)//resistance of an intrinsic Ge rod in ohm

//OUTPUT
printf('The resistance of an intrinsic Ge rod is %i ohm',R)
