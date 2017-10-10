//Example 5_14_u1
clc();
clear;
//To calculate the effective temprature of neutrons
a=0.352     //units in nm
h=1
k=1
l=1
d=a/sqrt(h^2+k^2+l^2)        //units in nm
theta=28.5          //units in degrees
lamda=2*d*sin(theta*(%pi/180))         //units in nm
h=6.63*10^-34      //units in m^2 kg s^-1
m=1.67*10^-27      //units in Kgs
KB=1.38*10^-23       //units in m^2 kg s^-2 K^-1
lamda=lamda*10^-9         //units in meters
T=h^2/(3*m*KB*lamda^2)       //units in K
printf("The effective temprature of neutrons is T=%dK",T)
