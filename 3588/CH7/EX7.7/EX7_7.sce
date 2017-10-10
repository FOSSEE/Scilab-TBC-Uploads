//Clearing console
clc
clear

//Intializing variables
h = 50
a = 0.5/12
b = 0.5/12
t = 0.5/12
Ta = 68
A = 4*a*b
T =[180.000000;180.000000;180.000000;106.528061;111.987760;106.528061;89.057755;90.986763;89.057755]

T3 = [T(5,1);T(8,1);T(9,1);T(6,1)]

//convective heat flow rate for element 3 due to different surfaces
I1 = (2*h*A)*(((T3(1,1)+T3(2,1)+T3(3,1)+T3(4,1))/4)-Ta)
I2 = 2*h*t*b*(((T3(2,1)+T3(3,1))/2)-Ta)
I3 = 2*h*t*b*(((T3(3,1)+T3(4,1))/2)-Ta)

//The total convective heat flow rate for element 3
H = I1+I2+I3


printf('\nResults\n')
printf('\nThe total convective heat flow rate for element 3\nH=%fBtu/hr',H)
