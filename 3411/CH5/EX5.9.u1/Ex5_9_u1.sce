//Example 5_9_u1
clc();
clear;
//To determine the interplanar spacing
h=6.63*10^-34      //units in m^2 kg s^-1
m=9.1*10^-31        //units in Kgs
e=1.6*10^-19    //units in coulombs
v=844           //units in Volts
lamda=h/sqrt(2*m*e*v)            //units in meters
n=1
theta=58      //units in degrees
d=(n*lamda)/(2*sin(theta*(%pi/180)))           //units in meters
printf("The interplanar spacing d=")
disp(d)
printf("meters")
