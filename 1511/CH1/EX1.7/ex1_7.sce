// Example 1.7 page no-20
clear
clc

V=1000   //volt
d=0.01  //m
e=1.6*10^-19 //C
m=9.1*10^-31//kg
eps=V/d
t=sqrt((2*m*d)/(e*eps))
printf("t=%.2f*10^-9",t*10^10)
