clc
clear
//Input data
d=8900//Density of copper in kg/m^3
a=63.5//Atomic weight of Cu
t=10^-14//Relaxation time in s
A=6.023*10^26//Avagadro number per mole
e=1.6*10^-19//Electron charge in Columbs
m=9.1*10^-31//Mass of electron in kg

//Calculations
n=(A*d)/a//Concentration of free electrons in m^-3
s=((n*e^2*t)/m)/10^7//Electrical conductivity in ohm^-1.m^-1 *10^7

//Output
printf('The electrical conductivity is %3.4f*10^7 ohm^-1.m^-1',s)
