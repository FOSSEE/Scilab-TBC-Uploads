//Example 5_28
clc();
clear;
//To calculate the effective temprature
theta=28.5    //units in degrees
d=0.203    //units in nm
lamda=(2*d*sin(theta*%pi/180))*10^-9  //units in  nano meters
h=6.626*10^-34
m=1.67*10^-27
k=1.38*10^-23
t=h^2/(3*m*k*lamda^2)
printf("The effective tempratures is T=%d K",t)
