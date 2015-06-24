//Initilization of variables
mb=0.06 //kg
ms=50 //kg
h=0.03 //m
g=9.8 //m/s^2
//Calculations
//Speed of bag+bullet
v2=sqrt(2*g*h) //m/s
//Applying conservation of momentum 
v1=((mb+ms)*v2)/mb //m/s
//Result
clc
printf('The speed of bullet as it entered the bag was %f m/s',v1)
