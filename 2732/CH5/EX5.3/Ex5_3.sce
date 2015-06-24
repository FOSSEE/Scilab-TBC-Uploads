clc
//initialization of variables
clear
A=3 //cm^2
L=18 //m
E= 2*10^6 //kg/cm^2
r=7833 //kg/m^3
//calculations
e=r*(L*100)^2/(2*E*10^6)
// results
printf('The elongation is %.5f cm',e)
