// Example 2.5, page no-31
clear
clc
lam=1.5418*10^-10//m
theta=30//in degrees
h=1
k=1
l=1
a=lam*sqrt(h^2+k^2+l^2)/(2*sin(theta*%pi/180))
printf("The lattice constant is %.4f *10^-10 m",a*10^10)
