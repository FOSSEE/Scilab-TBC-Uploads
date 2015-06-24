clc
clear
//INPUT DATA
AW=63.5//atomic weight of copper
D=8.93*10^3//density of copper in kg m^-3
t=2.48*10^-14//relaxation time of copper in s
AV=6.023*10^26//avagadro no in mole^-1
e=1.6*10^-19//charge of electron in coulombs
m=9.11*10^-31//mass of a electron in kg

//CALCULATION
n=(AV*D)/AW//density of electrons per unit volume in m^-3
EC=((n*e^2*t)/m)/10^7//electrical conductivity of copper in Sm^-1 *10^7

//OUTPUT
printf('The electrical conductivity of copper is %3.2f *10^7 in S m^-1',EC)
//mho=siemens
