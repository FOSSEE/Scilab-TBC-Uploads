clc
clear
//Input data
r=0.3//Radius of circular orbit in m
B=0.38//Magnetic field strength in T
e=(1.6*10^-19)//Charge of the proton in C
m=(1.672*10^-27)//Mass of the proton in kg

//Calculations
v=((e*B*r)/m)/10^6//Orbital speed of the proton in m/s

//Output
printf('Orbital speed of the proton is %3.0f *10^6 m/s',v)
