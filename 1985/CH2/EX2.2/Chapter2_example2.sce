clc
clear
//Input data
l=2.75//Length of steel wire in m
d=(1*10^-3)//Diameter of the wire in m
M=1//Applied load in kg
Y=(2*10^11)//Youngs modulus in N/m^2

//Calculations
T=(M*9.8)//Tension in N
dl=((T*l)/(3.14*(d/2)^2*Y))/10^-4//Increase in length in m *10^-4

//Output
printf('The increase in length of wire is %3.5f *10^-4 m',dl)
