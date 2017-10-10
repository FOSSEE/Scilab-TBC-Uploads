//Example number 7.12, Page number 7.18

clc;clear;close

// Variable declaration
a=3.16 // in m
lamda=1.54 // in m
n=1// unitless
theta=20.3*%pi/180 // radian

// Calculations
d=(n*lamda)/(2*sin(theta)) // in m
x=a/d                             // let sqrt(h^2+k^2+l^2)=x

// Result
printf("d = %.2f Angstrom",d)
printf("\nsqrt(h^2+k^2+l^2) = %.3f ",x)
printf("\nTherefore, h^2+k^2+l^2 =sqrt(2)")
printf("\nh =1, k=1")
