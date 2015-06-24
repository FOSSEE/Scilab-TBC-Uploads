clc
clear
//Input data
l=1//Length of wire in m
d=0.001//diameter of the wire in m
q=(90*3.14)/180//Twist angle in radians
r=(2.8*10^10)//Rigidity modulus in N/m^2

//Calculations
C=((3.14^2*r*(d/2)^4)/(4*l))/10^-3//Couple to be applied in N.m

//Output
printf('The couple to be applied is %3.4f *10^-3 N.m',C)
