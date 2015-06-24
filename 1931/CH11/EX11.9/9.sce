clc
clear
//INPUT DATA
RH=7.35*10^-5//Hall coefficient of silicon specimen in m^3 C^-1
rh=-7.35*10^-5//Hall coefficient of silicon specimen in m^3 C^-1
c=200//conductivity in ohm^-1 m^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
ne=(1/(RH*e))/10^22//The density of the charge carrier in electrons/m^3*10^22
me=(c*RH)/10^-3//The mobility of the charge carrier in m^2 V^-1 s^-1*10^-3

//OUTPUT
printf('The negative sign of the Hall coefficient indicates that the nature of the semiconductor is n-type \n The density of the charge carrier is %3.3f*10^22 electrons/m^3 \n The mobility of the charge carrier is %3.1f*10^-3 m^2 V^-1 s^-1',ne,me)
