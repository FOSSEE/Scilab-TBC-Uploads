clc
clear
//INPUT DATA
T1=293//Temperature in K
T2=373//Temperature in K
x1=250//The conductivity of semiconductor at T1 in ohm^-1 m^-1
x2=1100//The conductivity of semiconductor at T2 in ohm^-1 m^-1
e=1.6*10^-19//charge of electron in coulombs
kb=1.38*10^-23//Boltzmann's constant m^2 Kg s^-2 k^-1

//CALCULATION
Eg=(2*kb*log(x2/x1)*((T1*T2)/(T2-T1)))/10^-20//The band gap of semiconductor in J*10^-20

//OUTPUT
printf('The band gap of semiconductor is %3.4f*10^-20 J',Eg)
