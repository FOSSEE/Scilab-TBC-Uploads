// Example 2.30, page no-48
clear
clc
h=3
k=2
l=1
rfcc=0.1278*10^-9//m
a=4*rfcc/sqrt(2)
d=a/sqrt(h^2+k^2+l^2)
printf("\nThe lattice constant = %.3f *106-10\nThe interplanar spacing for the plane(321) is %.3f*10^-11 m",a*10^10,d*10^11)
