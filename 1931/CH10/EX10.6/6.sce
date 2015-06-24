clc
clear
//INPUT DATA
Eg=1.12*1.6*10^-19//Energy gap of Si semi conductor in J
me=0.12*9.11*10^-31//The electron mobility in m^2 V^-1 s^-1
mh=0.28*9.11*10^-31//The hole mobility in m^2 V^-1 s^-1
t=300//temperature of fermi level in k
kb=1.38*10^-23//Boltzmann's constant m^2 Kg s^-2 k^-1
m=9.11*10^-31//mass of an electron in Kg

//CALCULATION
Ef=((Eg/2)+(((3*kb*t)/4)*log(mh/me)))/10^-20//position of the fermi level in J *10^-20

//OUTPUT
printf('The position of the fermi level is %3.5f*10^-20 J',Ef)

