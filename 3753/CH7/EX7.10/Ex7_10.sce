//Example number 7.10, Page number 7.17

clc;clear;close

// Variable declaration
lamda=0.58 // in m
theta=9.5*%pi/180 // in radian
n=1 // unitless
d=0.5           // d200=a/sqrt(2^2+0^2+0^2)=0.5a
// Calculations
a=n*lamda/(2*d*sin(theta))     // 2*d*sin(theta)=n*lamda 

// Result
printf("a = %.2f Angstorms",a)
