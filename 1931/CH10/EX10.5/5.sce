clc
clear
//INPUT DATA
Eg=1.43*1.6*10^-19//The energy gap of intrinsic GaAs in J
xe=0.85//The electron mobility in m^2 V^-1 s^-1
xh=0.04//The hole mobility in m^2 V^-1 s^-1
me=0.068*9.11*10^-31//effective mass of electron in m
mh=0.5*9.11*10^-31//effective mass of hole in m
h=6.625*10^-34//Planck's constant in m^2 Kg /sec
e=1.6*10^-19//charge of electron in coulombs
m=9.11*10^-31//mass of an electron in Kg
kb=1.38*10^-23//Boltzmann's constant m^2 Kg s^-2 k^-1
t=300//temperature in k

//CALCULATION
ni=(2*((2*3.14*kb*t)/h^2)^(3/2)*(me*mh)^(3/4)*exp(-Eg/(2*kb*t)))/10^12//intrinsic carrier concentration in m^-3*10^12
ec=(ni*10^12*e*(xe+xh))/10^-7//The electrical conductivity at room temperature in ohm^-1 m^-1 *10^-7

//OUTPUT
printf('The intrinsic carrier concentration is %3.4f*10^12 m^-3 \n The electrical conductivity at room temperature is %3.4f *10^-7 ohm^-1 m^-1',ni,ec)
