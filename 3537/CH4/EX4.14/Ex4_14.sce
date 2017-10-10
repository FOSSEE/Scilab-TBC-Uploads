//Example 4_14
clc();
clear;
//To determine the space of the reflecting plane and the volume of the unit cell
lemda=3*10^-10                        //units in meters
theta=40                             //units in degrees
h=1
k=0
l=0
n=1
d=(n*lemda)/(2*sin(theta*%pi/180))*10^10
printf("The space of the reflecting plane is %.3f angstrom",d)
v=(d*sqrt(h^2+k^2+l^2)*10^-10)^3
printf("\n\nThe volume of the unit cell is %.33f m^3",v)
