clc
clear
//Input data
N=40//Minimum speed of rotor in rpm
r=2.5//Radius of rotor in m

//Calculations
t=60/N//Time period in s
u=(9.8*t^2)/(4*3.14^2*r)//Coefficient of limiting friction

//Output
printf('The coefficient of limiting friction between the object and the wall of the rotor is %3.4f',u)
