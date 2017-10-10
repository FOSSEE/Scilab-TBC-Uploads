//Example 5_20
clc();
clear;
//To compute the cube edge of unit cell
n=1
lamda=1.54*10^-10  //units in m
theta=19.2   //units in degrees
d=(n*lamda)/(2*sin(theta*%pi/180))
h=1
k=1
l=1
a=d*sqrt(h^2+k^2+k^2)
printf("Cube edge of unit cell a=")
disp(a)
printf("meters")
