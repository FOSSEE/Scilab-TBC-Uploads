clc
clear
//INPUT DATA
Eg=0.72*1.6*10^-19//The band gap of Ge in J
T1=293//Temperature in K
T2=313//Temperature in K
x1=2//The conductivity of Ge at T1 in ohm^-1 m^-1
e=1.6*10^-19//charge of electron in coulombs
kb=1.38*10^-23//Boltzmann's constant m^2 Kg s^-2 k^-1

//CALCULATION
x2=x1*(exp((Eg/(2*kb))*((1/T1)-(1/T2))))//The ratio of conductiveness

//OUTPUT
printf('The conductivity of Ge at T2 is %3.4f ohm^-1 m^-1',x2)
