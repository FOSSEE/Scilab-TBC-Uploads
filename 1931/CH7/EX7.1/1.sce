clc
clear
//INPUT DATA
n=5.9*10^28 //electron concentration of conductor in m^-3
v=0.625//drift velocity of a conductor in ms^-1
x=6.22*10^7// electrical conductivity in ohm^-1 m^-1
e=1.6*10^-19//charge of electron in coulombs

//calculation
J=n*e*v/10^9//current density in the conductor corresponds to drift velocity in Am^-1 * 10^9
z=(x/(n*e))/10^-3//mobility of the charge in m^2V^-1s^-1 * 10^-3
 
//OUTPUT
printf('The current density in the conductor corresponds to a drift velocity is %3.1f * 10^9 A m^-1 \n Mobility of the charge carrires is %3.3f*10^-3 m^2 V^-1 s^-1',J,z)
