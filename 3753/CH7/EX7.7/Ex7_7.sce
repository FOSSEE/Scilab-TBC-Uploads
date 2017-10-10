//Example number 7.7, Page number 7.15

clc;clear;close

// Variable declaration
n=1 // unitless
lamda=1.54// in m
theta=32*%pi/180 // radian
h=2// in m
k=2// in m
l=0// in m

// Calculations
d=(n*lamda*10^-10)/(2*sin(theta))   // derived from 2dsin(theta)=n*l
a=d*(sqrt(h^2+k^2+l^2))//in m

// Results
printf("d = %.2e m",d)
printf("\na = %.1e m",a)
