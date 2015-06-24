clc
clear
//INPUT DATA
r=2*10^-4//the resistivity of In-Sb in ohm m
me=6//The electron mobility in m^2 V^-1 s^-1
mh=0.2//The hole mobility in m^2 V^-1 s^-1
e=1.6*10^-19//charge of electron in coulombs

//CALCULATION
d=(1/(r*e*(me+mh)))/10^21//The intrinsic carrier density at room tepmerature in m^-3 *10^21

//OUTPUT
printf('The intrinsic carrier density at room tepmerature is %3.3f *10^21 m^-3',d)
