clc
//Chapter8
//Example8.5, page no 317
//Given
a=0.7//attenuation constant
b=0.3//phase constant
Gamma=a+(%i*b)//propagation constant
l=0.5// half length of line( for midpoint)
Vs=10// Excitation voltage
V_mod=Vs*(%e^(-a*l))//Magnitude of the Vs

phi=b*l*180/%pi//phase shift
V=V_mod*(%e^(-%i*(phi*%pi/180)))//voltage at the mid point
mprintf('the voltage at the mid point of the line is \n%f /_-%fdegrees   Volts',V,phi)

// Note :  There are some calculation errors in the solution presented in the book
