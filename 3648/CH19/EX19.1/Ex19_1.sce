//Example 19_1
clc();
clear;
//To find the flux in the room
l=4       //Units in meters
b=0.8       //Units in meters
theta=20      //Units in degrees
a=l*b     //Units in meters^2
b=4*10^-5       //Units in T
thetaa=cos(theta*%pi/180)       //Units in radians
phi=b*thetaa*a      //Units in T meters^2
printf("The flux in the room is Phi=%.5f T meters^2",phi)
