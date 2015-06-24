// Example 2.26, page no-46
clear
clc
theta=27.5/2//in degrees
a=0.563*10^-9
n=1
h=1
k=1
l=1
d=a/sqrt(h^2+k^2+l^2)
printf("\nThe lattice spacing for the plane (111) is %.2f * 10^-10 m",d*10^10)
lam=2*d*sin(theta*%pi/180)/n
printf("\nThe deBroglie wavelength of the neutrons is %.3f *10^-10 m",lam*10^10)
