clc
clear
//INPUT DATA
f=426//frequency of sound in Hz
a=0.65*10^-2//amplitude of sound wave in m
A=1//area in m^2
v=340//velocity of sound in air in ms^-1
d=1.29//density of air in Kg m^-3

//CALCULATION
I=(2*3.14*3.14*f^2*a^2*d*v)/10^4//The flow of energy across 1m^2 per second in Wm^-2*10^4

//OUTPUT
printf('The flow of energy across 1m^2 per second is %3.3f*10^4 Wm^-2',I)
