clc
clear
//INPUT DATA
RH=4.16*10^-4//Hall coefficient of n-type semiconductor in m^3 C^-1
c=180//conductivity in ohm^-1 m^-1
e=1.6*10^-19//charge of electron in coulombs
x=1.18//correction factor for RH

//CALCULATION
ne=(x/(RH*e))/10^22//The density of the charge carrier in electrons/m^3*10^22
me=(c/(ne*10^22*e))//The mobility of the charge carrier in m^2 V^-1 s^-1

//OUTPUT
printf('The density of the charge carrier is %3.3f*10^22 electrons/m^3 \n The mobility of the charge carrier is %3.5f m^2 V^-1 s^-1',ne,me)
