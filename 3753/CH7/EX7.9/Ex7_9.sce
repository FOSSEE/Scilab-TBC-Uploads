//Example number 7.9, Page number 7.16

clc;clear;close

// Variable declaration
d=1.18 // in m
theta=90*%pi/180 // in radian
lamda=1.540 // in m

// Calculations
n=(2*d*sin(theta))/lamda // unitless

// Result
printf("n = %0.2f",n)
