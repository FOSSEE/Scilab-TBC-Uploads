clc
clear
//INPUT DATA
r=1.54*10^-8//resistivity of silver wire at room temperature in ohm metre
E=100//Electric field along the wire in V/m
n=5.8*10^28//nis assuming of conduction electrons in m^-3
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
m=(1/(r*n*e))/10^-3//mobility of charge in m^2 V^-1 s^-1 *10^-3
v=m*E/1000//drift velocity of electrons in m s^-1

//OUTPUT
printf('The mobility of charge is %3.2f * 10^-3 in m^2 V^-1 s^-1 \n The drift velocity of electrons is %3.4f in m.s^-1',m,v)
