clc
clear
//INPUT DATA
Eg=1.1*1.6*10^-19//The energy gap of silicon in J
me=0.48//The electron mobility in m^2 V^-1 s^-1
mh=0.13//The hole mobility in m^2 V^-1 s^-1
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
e=1.6*10^-19//charge of electron in coulombs
m=9.11*10^-31//mass of an electron
kb=1.38*10^-23//Boltzmann's constant m^2 Kg s^-2 k^-1
t=300//temperature in k

//CALCULATION
ni=2*((2*3.14*m*kb*t)/h^2)^(3/2)*exp(-Eg/(2*kb*t))//intrinsic carrier concentration in m^-3
ec=(ni*e*(me+mh))/10^-3//The electrical conductivity at room temperature in ohm^-1 m^-1 *10^-3

//OUTPUT
printf('The electrical conductivity at room temperature is %3.4f *10^-3 ohm^-1 m^-1',ec)
