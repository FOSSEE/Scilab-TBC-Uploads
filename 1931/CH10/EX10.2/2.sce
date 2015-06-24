clc
clear
//INPUT DATA
d=2.37*10^19//The intrinsic carrier density at room temperature in m^-3
me=0.38//The electron mobility in m^2 V^-1 s^-1
mh=0.18//The hole mobility in m^2 V^-1 s^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
r=(1/(d*e*(me+mh)))//The resistivity of intrinsic carrier in ohm m

//OUTPUT
printf('The resistivity of intrinsic carrier is %3.4f ohm m',r)
