clc
clear
//INPUT DATA
r=1.85*10^-10//the radius of sodium atom in m
t=3*10^-14//the classic value of mean free time in sec
temp=0//temperature in centigrade
na=2//number of atoms in a unit cell
ne=1//number of electrons per unit cell
e=1.6*10^-19//charge of electron in coulombs
m=9.11*10^-31//mass of a electron in kg

//CALCULATION 
a=(4*r)/sqrt(3)//a is one side in bcc structure unit cell in m
v=a*a*a//volume of bcc structure unit cell in m^3
n=(na*ne)/v//density of electrons per unit volume in m^-3
r=(m/(n*e^2*t))/10^-8//The electrical resistivity in ohm metre *10^-8

//OUTPUT
printf('The electrical resistivity is %3.2f *10^-8 in ohm metre',r)
