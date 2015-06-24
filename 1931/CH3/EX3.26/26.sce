clc
clear
//INPUT DATA
a=0.405*10^-9//lattice constant of unit cell of aluminium which is face centered cubic in m
s=25*10^-2//Side of aluminium foil in m
t=0.005*10^-2//Thickness of aluminium foil in m

//CALCULATION
ar=(s*s)//area of aluminium foil in m^2
V=(ar*t)//volume of the aluminium foil in m^3
v=(a*a*a)//volume of the unit cell in m^3
n=(V/v)/10^22//Number of unit cells *10^22

//OUTPUT
printf('The Number of unit cells is %3.4f*10^22',n)
