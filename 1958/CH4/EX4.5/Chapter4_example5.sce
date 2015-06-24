clc
clear
//Input data
m=3//Mass of the rotor in kg
I=0.03//Moment of inertia in kg.m^2
d=0.25//Distance of pivot from the centre in m
p=30//Precession in rpm

//Calculations
T=m*9.8*d//Torgue in N.m
w=(p*2*3.14)/60//Angular velocity in rad/s
w1=(T/(I*w))//Angular speed of rotation of the rotor in rpm

//Output
printf('Angular speed of rotation of the rotor is %i rpm',w1)
