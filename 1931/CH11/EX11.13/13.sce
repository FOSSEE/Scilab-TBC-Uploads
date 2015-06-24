clc
clear
//INPUT DATA
RH=0.0125//Hall coefficient of a sample n-type semiconductor in m^3 C^-1
rh=-0.0125//Hall coefficient of a sample n-type semiconductor in m^3 C^-1
me=0.36//electron mobility in m^2 V^-1 s^-1
EH=100//electric field in V/m
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
n=(1/(RH*e))//The density of the charge carrier in m^-3
c=(n*e*me)//conductivity of n-type semiconductor in ohm^-1 m^-1
J=(c*EH)//The current density in A/m^2

//OUTPUT
printf('The current density is %i A/m^2',J)
