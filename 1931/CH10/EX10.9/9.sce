clc
clear
//INPUT DATA
Eg=1.2*1.6*10^-19//The energy gap of intrinsic semiconductor in J
T1=600//Temperature in K
T2=300//Temperature in K
e=1.6*10^-19//charge of electron in coulombs
kb=1.38*10^-23//Boltzmann's constant m^2 Kg s^-2 k^-1

//CALCULATION
x=exp((-Eg/(2*kb))*((1/T1)-(1/T2)))/10^5//The ratio of conductiveness*10^5

//OUTPUT
printf('The ratio of conductiveness is %3.2f*10^5',x)
