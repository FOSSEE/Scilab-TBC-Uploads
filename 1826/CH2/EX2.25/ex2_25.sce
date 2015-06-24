// Example 2.25, page no-45
clear
clc
theta=12//in degrees
lam=2.82*10^-10//m
n=1
d=n*lam/(2*sin(theta*%pi/180))
printf("The interplanar spacing is %.3f *10^-10 m",d*10^10)
