// Example 2.23, page no-43
clear
clc
h=3
k=0
l=2
theta=35//in degrees
lam=0.7*10^-10//m
n=1
d=n*lam/(2*sin(theta*%pi/180))
printf("\nThe interplanar distance for(302) plane is %.3f*10^-11 m",d*10^11)
a=d*sqrt(h^2+k^2+l^2)
printf("\nThe lattice constance is %.2f*10^-10 m",a*10^10)
