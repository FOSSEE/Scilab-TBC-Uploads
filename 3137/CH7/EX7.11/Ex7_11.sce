//Initilization of variables
w=10/16 //lb/ft
a=80 //ft
P=500 //lb
//Calculations
lhs=(P*2)/(w*a)
d=sqrt(1/((((lhs^2)-1)*16)/(80^2))) //ft
//Result
clc
printf('The sag in the cable is %fft',d)
