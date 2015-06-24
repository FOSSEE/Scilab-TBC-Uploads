clc
clear
//INPUT DATA
RH=3.66*10^-4//Hall coefficient of a doped silicon in m^3 C^-1
r=8.93*10^-3//The resistivity in ohm m
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
n=(1/(RH*e))/10^22//The density of the charge carrier in m^-3 *10^22
me=(RH/r)//The mobility is %3.4f m^2 V^-1 s^-1

//OUTPUT
printf('The density of the charge carrier is %3.4f*10^22 m^-3 \n The mobility is %3.4f m^2 V^-1 s^-1',n,me)
